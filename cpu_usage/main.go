package main

import (
	"fmt"
	"log"
	"os"
	"runtime/pprof"
	"time"
)

func main() {
	doJob()
}

func doJob() {
	f, err := os.Create("cpu_2.prof")
	if err != nil {
		log.Fatal("could not create CPU profile: ", err)
	}
	defer f.Close()

	go func() {
		for {
			fmt.Println("Hello")
			time.Sleep(time.Millisecond * 500)
		}
	}()

	if err := pprof.StartCPUProfile(f); err != nil {
		log.Fatal("could not start CPU profile: ", err)
	}
	defer pprof.StopCPUProfile()

	time.Sleep(time.Second * 5)
}
