package main

import (
	"fmt"
	"math/bits"
)

var p = fmt.Println

func main() {
	for i := 8; i >= 2; i -= 1 {
		fmt.Printf("%d Len64(%8b) = %d\n", i, i, bits.Len64(uint64(i)))
	}
}
