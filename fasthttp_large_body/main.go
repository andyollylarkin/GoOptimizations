package main

import (
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"os"
	"runtime"
	"time"

	"github.com/andyollylarkin/chunkreader"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"github.com/valyala/fasthttp"
)

var heapAlloc = prometheus.NewCounterVec(prometheus.CounterOpts{
	Name: "fasthttp_heap_alloc",
	Help: "Heap Allocation",
}, []string{"method"})

var heapInUse = prometheus.NewCounterVec(prometheus.CounterOpts{
	Name: "fasthttp_heap_in_use",
	Help: "Heap Usage",
}, []string{"method"})

var sysAlloc = prometheus.NewCounterVec(prometheus.CounterOpts{
	Name: "fasthttp_sys_alloc",
	Help: "System Allocation",
}, []string{"method"})

var alloc = prometheus.NewCounterVec(prometheus.CounterOpts{
	Name: "fasthttp_alloc",
	Help: "alloc",
}, []string{"method"})

func handler(ctx *fasthttp.RequestCtx) {
	defer log.Println("Done processing")
	log.Println("Process file")

	dst, err := os.Create("./file_dst")
	if err != nil {
		log.Fatal(err)
	}

	var stream io.Reader

	fmt.Println("Content_Length: ", ctx.Request.Header.ContentLength())

	if ctx.Request.IsBodyStream() {
		cr := chunkreader.NewChunkReader(ctx.Request.BodyStream(), 5<<20)
		log.Println("Is body stream")

		stream = cr
	} else {
		stream = &FuncReader{
			f: ctx.Request.Body,
		}
		log.Println("Isnt body stream")
	}

	_, err = io.Copy(dst, stream)
	if err != nil {
		log.Fatal(err)
	}

	ctx.SetStatusCode(200)
	_, _ = ctx.WriteString("Request processed")
}

func stats() {
	for {
		var m runtime.MemStats
		runtime.ReadMemStats(&m)
		heapAlloc.WithLabelValues("POST").Add(float64(m.HeapAlloc))
		sysAlloc.WithLabelValues("POST").Add(float64(m.Sys))
		heapInUse.WithLabelValues("POST").Add(float64(m.HeapInuse))
		alloc.WithLabelValues("POST").Add(float64(m.Alloc))

		time.Sleep(time.Second)
		runtime.GC()
	}
}

func main() {
	s := &fasthttp.Server{
		MaxRequestBodySize: 120 << 20,
		Handler:            handler,
		// StreamRequestBody:  true,
	}

	err := prometheus.Register(alloc)
	if err != nil {
		log.Fatal(err)
	}
	err = prometheus.Register(heapAlloc)
	if err != nil {
		log.Fatal(err)
	}
	err = prometheus.Register(sysAlloc)
	if err != nil {
		log.Fatal(err)
	}
	err = prometheus.Register(heapInUse)
	if err != nil {
		log.Fatal(err)
	}

	go stats()

	l, _ := net.Listen("tcp", ":8080")

	go func() {
		log.Println("Start prometheus server at :8081")
		http.ListenAndServe(":8081", promhttp.Handler())
	}()

	log.Println("Start server at :8080")
	err = s.Serve(l)
	if err != nil {
		log.Fatal(err)
	}
}
