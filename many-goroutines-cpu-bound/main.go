package main

import (
	"crypto/md5"
	"encoding/hex"
	"fmt"
	"io"
	"net/http"
	_ "net/http/pprof"
	"runtime"
	"time"
)

func handler(w http.ResponseWriter, r *http.Request) {
	body, err := io.ReadAll(r.Body)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// доп. имитация CPU bound задачи
	time.Sleep(time.Second * 1)

	hash := md5.Sum(body)
	hashString := hex.EncodeToString(hash[:])
	w.Write([]byte(hashString))
}

func printGoroutineCount() {
	for {
		fmt.Printf("Number of goroutines: %d\n", runtime.NumGoroutine())
		time.Sleep(1 * time.Second)
	}
}

func init() {
	go printGoroutineCount()
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
