package main

import (
	"math/rand"
	"testing"
	"time"
)

func generateRandomBytes(n int) []byte {
	rand.Seed(time.Now().UnixNano())
	b := make([]byte, n)
	rand.Read(b)
	return b
}

func BenchmarkSliceToString(b *testing.B) {
	input := generateRandomBytes(1_000_000_000)
	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		_ = sliceToString(input)
	}
}

func BenchmarkSliceToStringUnsafe(b *testing.B) {
	input := generateRandomBytes(1_000_000_000)
	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		_ = sliceToStringUnsafe(input)
	}
}
