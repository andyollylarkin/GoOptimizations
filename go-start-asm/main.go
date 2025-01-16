package main

import "os"

func main() {
	go func() {
		println("Hello, World!")
	}()
	os.Exit(0)
}
