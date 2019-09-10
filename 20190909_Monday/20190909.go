// https://www.youtube.com/watch?v=LvgVSSpwND8
// https://play.golang.org/p/Fv8Yn--BqCe
// Concurency in Go. Jake Wright.
// Common patern called Worker Pools

package main

import (
	"fmt"
)

func main() {
	fmt.Println("alias x='go run 20190909_Monday/20190909.go'")
	fmt.Println("Hello, playground")
	steps := 40
	jobs := make(chan int, steps)
	results := make(chan int, steps)

	go worker(jobs, results)
	go worker(jobs, results)

	for i:=0;  i<steps; i++{
		jobs <- i
	}
	close(jobs)

	for j := 0; j < steps; j++{
		fmt.Println(<-results)
	}
} //test

func one_worker(*jobs, *results, steps){

}
func two_worker(*jobs, *results, steps){
	
}

func worker(jobs <-chan int, results chan<- int){
	for n := range jobs{
		results <- fib(n)
	}
}

func fib(n int) int{
	if n <= 1 {
		return n
	} 
	
	return fib(n-1) + fib(n-2)
}
