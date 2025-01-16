package main

import (
	"fmt"
	"unsafe"
)

func main() {
	i := []byte("Hello World")

	fmt.Println(sliceToString(i))
	fmt.Println(sliceToStringUnsafe(i))
}

//go:noinline
func sliceToString(input []byte) string {
	return string(input)
}

//go:noinline
func sliceToStringUnsafe(input []byte) string {
	return *(*string)(unsafe.Pointer(&input))
}
