package main

import (
	"flag"
	"fmt"
	"io"
	"log"
	"os"

	"golang.org/x/exp/mmap"
)

func main() {
	m := flag.String("method", "open", "open or mmap")
	flag.Parse()

	switch *m {
	case "open":
		open()
	case "mmap":
		mmap_m()
	}
}

func open() {
	f, err := os.Open("./rand_10G.data")
	if err != nil {
		log.Fatal(err)
	}

	_, err = io.ReadAll(f)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("done")
}

func mmap_m() {
	m, err := mmap.Open("./rand_10G.data")
	if err != nil {
		log.Fatal(err)
	}

	buf := make([]byte, 40<<10)

	var n int64
	reader := 0

	for {
		read, err := m.ReadAt(buf, n)
		if err != nil && err != io.EOF {
			log.Fatal(err)
		}

		if read == 0 {
			break
		}

		n += int64(read)
		reader += read
	}

	fmt.Println("done: ", reader)
}
