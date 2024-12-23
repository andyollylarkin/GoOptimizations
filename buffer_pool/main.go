package bufferpool

import "sync"

//go:noinline
func FillBuffers() {
	for i := 0; i < 1_000_000; i++ {
		buf := make([]byte, 1024)

		buf = append(buf, 1)
	}
}

//go:noinline
func FillBuffersPool() {
	p := sync.Pool{}
	p.New = func() any {
		return make([]byte, 1024)
	}

	for i := 0; i < 1_000_000; i++ {
		buf := p.Get().([]byte)

		buf = append(buf, 1)
	}
}
