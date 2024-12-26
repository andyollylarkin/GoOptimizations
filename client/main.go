package main

import (
	"fmt"
	"io"
	"log"

	"github.com/andyollylarkin/chunkreader"
	"github.com/valyala/fasthttp"
)

func main() {
	cl := &fasthttp.Client{
		StreamResponseBody: true,
	}

	req := fasthttp.AcquireRequest()
	res := fasthttp.AcquireResponse()

	req.SetHost("localhost:3000")
	req.SetRequestURI("http://localhost:3000/api/ds/query?ds_type=frser-sqlite-datasource&requestId=SQR100")
	req.Header.SetMethod("GET")

	err := cl.Do(req, res)
	if err != nil {
		log.Fatal(err)
	}

	if res.IsBodyStream() {
		cr := chunkreader.NewChunkReader(res.BodyStream(), 1024)
		bytes, err := io.ReadAll(cr)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Println(string(bytes))
	}

}
