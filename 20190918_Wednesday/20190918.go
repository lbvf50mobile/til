    // Go: Anonymous function recursion.
    package main

    import (
        "fmt"
    )

// https://leetcode.com/problems/climbing-stairs/
// Time limit exceed
func climbStairs(n int) int {
    counter := 0
    // https://gobyexample.com/closures
    // https://github.com/golang/go/issues/226
    var recursion func(input int)
    recursion = func (input int){
        if 0 == input {
            counter += 1
        }
        if 0 > input {
            return
        }
        recursion(input - 1)
        recursion(input - 2)
    }
    recursion(n)
    return counter
    
}
    
    func main() {
        fmt.Println("alias x='go run 20190918_Wednesday/20190918.go'")
        fmt.Println(climbStairs(2))
    }
