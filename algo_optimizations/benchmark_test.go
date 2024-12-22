package algooptimizations

import (
	"testing"
)

func BenchmarkFindPairsNestedLoops(b *testing.B) {
	in := generateInput(100_000)
	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		findPairsNestedLoops(in, 18)
	}
}

func BenchmarkFindPairsUsingMap(b *testing.B) {
	in := generateInput(100_000)
	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		findPairsUsingMap(in, 18)
	}
}
