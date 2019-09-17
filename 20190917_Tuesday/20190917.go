    package main

    import (
        "fmt"
    )

    // https://leetcode.com/problems/plus-one/
/*
Runtime: 0 ms, faster than 100.00% of Go online submissions for Plus One.
Memory Usage: 2.1 MB, less than 50.00% of Go online submissions for Plus One.
*/
func plusOne(digits []int) []int {
    next := 1
    for j := len(digits) - 1; j >= 0; j -= 1{
        if 10 == digits[j] + next {
            next = 1
            digits[j] = 0
        }else{
            digits[j] += next
            next = 0
        }
    }
    
    if 1 == next {
        one := []int{1}
        // https://stackoverflow.com/questions/16248241/concatenate-two-slices-in-go
        return append(one,digits...)
    }
    return digits
    
}
    
    func main() {
        fmt.Println("alias x='go run 20190917_Tuesday/20190917.go'")
    }
