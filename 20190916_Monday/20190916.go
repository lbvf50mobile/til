// Go: Newton's method, float64;

// https://www.quora.com/How-do-I-write-a-program-for-finding-the-square-root-of-a-number-without-using-the-sqrt-function
// https://leetcode.com/problems/sqrtx/submissions/

package main

    import (
        "fmt"
    )

    func mySqrt(x int) int {
    
        guess := 1.0
        
        for i:=0; i < 100000; i++ {
            guess = (guess + (float64(x)/guess))/2
        }
        if 0 > int(guess) {
            return 0
        } 
        return int(guess)
        
    }
    
    func main() {
        fmt.Println("alias x='go run 20190916_Monday/20190916.go'")
        fmt.Println(mySqrt(4))
    }
