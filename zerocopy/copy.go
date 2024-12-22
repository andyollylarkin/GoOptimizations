package copy

import "io"

func gen() []byte {
	out := make([]byte, 0)

	for i := 0; i < 3_000_000_000; i++ {
		out = append(out, byte(i))
	}

	return out
}

//go:noinline
func copy(dst io.Writer, src []byte) (int, error) {
	return dst.Write(src)
}

//go:noinline
func zeroCopy(dst io.Writer, src *[]byte) (int, error) {
	return dst.Write(*src)
}
