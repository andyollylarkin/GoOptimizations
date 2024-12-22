package algooptimizations

import (
	"time"

	"golang.org/x/exp/rand"
)

func generateInput(length int) []int {
	rand.Seed(uint64(time.Now().UnixNano()))
	nums := make([]int, length)

	for i := 0; i < length; i++ {
		nums[i] = rand.Intn(100)
	}

	return nums
}

func findPairsNestedLoops(nums []int, target int) [][2]int {
	var pairs [][2]int
	// O(n^2)
	for i := 0; i < len(nums); i++ {
		for j := i + 1; j < len(nums); j++ {
			if nums[i]+nums[j] == target {
				pairs = append(pairs, [2]int{nums[i], nums[j]})
			}
		}
	}
	return pairs
}

func findPairsUsingMap(nums []int, target int) [][2]int {
	var pairs [][2]int
	numMap := make(map[int]bool)

	// O(n)
	for _, num := range nums {
		complement := target - num
		if numMap[complement] {
			pairs = append(pairs, [2]int{complement, num})
		}
		numMap[num] = true
	}

	return pairs
}
