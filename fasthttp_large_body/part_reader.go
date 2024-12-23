package main

import "bytes"

type FuncReader struct {
	f      func() []byte
	buffer bytes.Buffer
	readed bool
}

func (r *FuncReader) Read(p []byte) (int, error) {
	if !r.readed {
		r.buffer.Write(r.f())

		r.readed = true
	}

	return r.buffer.Read(p)
}
