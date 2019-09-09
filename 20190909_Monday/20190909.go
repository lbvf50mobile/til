// https://www.youtube.com/watch?v=LvgVSSpwND8
// https://play.golang.org/p/Fv8Yn--BqCe
// Concurency in Go. Jake Wright.
// Common patern called Worker Pools

package main

import (
	"fmt"
)

func main() {
	fmt.Println("Hello, playground")
} //test

func worker(jobs <-chan int, results chan<- int){
	for n := range jobs{
		results <-fib(n)
	}
}

func fib(n int) int{
	if n <= 1 {
		return 0
	} 
	
	return fib(n-1) + fib(n-2)
}