package main

func main() {
	sum(1, 2)
	sumObj(ObjToSum{a: 1, b: 2})
}

type ObjToSum struct {
	a, b, c, d, e int
}

//go:noinline
func sum(a, b int) int {
	return a + b
}

//go:noinline
func sumObj(obj ObjToSum) int {
	return obj.a + obj.b
}
