package copy

import (
	"bytes"
	"testing"
)

func BenchmarkCopy(b *testing.B) {
	src := gen()
	dst := bytes.NewBuffer([]byte{})

	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		dst.Reset() // Reset the buffer for each iteration
		_, err := copy(dst, src)
		if err != nil {
			b.Fatalf("copy failed: %v", err)
		}
	}
}

func BenchmarkZeroCopy(b *testing.B) {
	src := gen()
	dst := bytes.NewBuffer([]byte{})

	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		dst.Reset() // Reset the buffer for each iteration
		_, err := zeroCopy(dst, &src)
		if err != nil {
			b.Fatalf("copy failed: %v", err)
		}
	}
}
