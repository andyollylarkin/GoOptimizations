package bufferpool_test

import (
	bufferpool "benchpool"
	"testing"
)

func BenchmarkFillBuffersPool(b *testing.B) {
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		bufferpool.FillBuffersPool()
	}
}

func BenchmarkFillBuffersPoolWithoutPool(b *testing.B) {
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		bufferpool.FillBuffers()
	}
}
