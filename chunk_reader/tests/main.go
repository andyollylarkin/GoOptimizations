package main

import (
	"chunkreader"
	"io"
	"log"
	"os"
)

func main() {
	f, err := os.Open("./100mb_file.bin")
	if err != nil {
		log.Fatal(err)
	}
	outF, err := os.Create("./dst_file2.bin")
	if err != nil {
		log.Fatal(err)
	}
	cr := chunkreader.NewChunkReader(f, 100_000)

	_, err = io.Copy(outF, cr)
	if err != nil {
		log.Fatal(err)
	}

}
