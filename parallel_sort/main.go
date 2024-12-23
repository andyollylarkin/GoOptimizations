package main

import (
	"flag"
	"fmt"
	"math/rand"
	"runtime"
	"sort"
	"sync"
	"time"
)

func generateRandomSlice(length int) []int {
	slice := make([]int, length)
	for i := range slice {
		slice[i] = rand.Intn(length) // generates a random integer between 0 and 99
	}
	return slice
}

func main() {
	method := flag.String("method", "linear", "")
	dataset := flag.Int("dataset", 100_000_000, "")
	flag.Parse()

	start := time.Now()

	switch *method {
	case "linear":
		sortLinear(*dataset)
	case "parallel":
		sortParallel(*dataset)
	}

	end := time.Now()

	fmt.Println("Time took: ", end.Sub(start))
}

// merge объединяет два отсортированных слайса в один
func merge(left, right []int) []int {
	result := make([]int, 0, len(left)+len(right))
	i, j := 0, 0

	for i < len(left) && j < len(right) {
		if left[i] < right[j] {
			result = append(result, left[i])
			i++
		} else {
			result = append(result, right[j])
			j++
		}
	}

	// Добавляем оставшиеся элементы
	result = append(result, left[i:]...)
	result = append(result, right[j:]...)
	return result
}

func sortParallel(dataset int) {
	dataSet := generateRandomSlice(dataset)
	numCPU := runtime.NumCPU()
	bunchSize := len(dataSet) / numCPU

	var wg sync.WaitGroup
	chunks := make([][]int, numCPU)

	// Разделяем массив на части и сортируем их параллельно
	for i := 0; i < numCPU; i++ {
		start := i * bunchSize
		end := start + bunchSize
		if i == numCPU-1 {
			end = len(dataSet) // Последняя часть может быть больше из-за округления
		}

		chunks[i] = dataSet[start:end]
		wg.Add(1)

		go func(idx int) {
			defer wg.Done()
			sort.Ints(chunks[idx])
		}(i)
	}

	wg.Wait() // Ожидаем завершения всех сортировок

	// Объединяем отсортированные части
	for len(chunks) > 1 {
		var mergedChunks [][]int
		for i := 0; i < len(chunks); i += 2 {
			if i+1 < len(chunks) {
				mergedChunks = append(mergedChunks, merge(chunks[i], chunks[i+1]))
			} else {
				mergedChunks = append(mergedChunks, chunks[i])
			}
		}
		chunks = mergedChunks
	}

	dataSet = chunks[0] // Итоговый отсортированный массив

	fmt.Println("Done", "First: ", dataSet[0], "Last: ", dataSet[len(dataSet)-1])
}

func sortLinear(dataset int) {
	dataSet := generateRandomSlice(dataset)
	sort.Ints(dataSet)
	fmt.Println("Done", "First: ", dataSet[0], dataSet[len(dataSet)-1])
}
