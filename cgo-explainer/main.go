// Please read README for details
package main

import "C"

//go:noinline
func UnexportedFoo() int {
	return 10
}

//export ExportedFoo
//go:noinline
func ExportedFoo() int {
	return 5
}

func main() {
	x := ExportedFoo() + UnexportedFoo()
	println(x)
}
