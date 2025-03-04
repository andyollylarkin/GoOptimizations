package chunkreader_test

import (
	"chunkreader"
	"io"
	"os"
	"testing"
)

func BenchmarkChunkReader(b *testing.B) {
	f, err := os.Open("./100mb_file.bin")
	if err != nil {
		b.Fatal(err)
	}
	outF, err := os.Create("./dst_file.bin")
	if err != nil {
		b.Fatal(err)
	}

	defer os.Remove("./dst_file.bin")

	for i := 0; i < b.N; i++ {
		cr := chunkreader.NewChunkReader(f, 100<<10)
		_, err := io.Copy(outF, cr)
		if err != nil {
			b.Fatal(err)
		}
	}
}
