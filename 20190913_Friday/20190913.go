    package main

    import (
        "fmt"
    )
    
/*
Runtime: 12 ms, faster than 11.06% of Go online submissions for Maximum Subarray.
Memory Usage: 3.3 MB, less than 57.14% of Go online submissions for Maximum Subarray.
Runtime: 4 ms, faster than 97.18% of Go online submissions for Maximum Subarray.
Memory Usage: 3.3 MB, less than 57.14% of Go online submissions for Maximum Subarr
https://leetcode.com/problems/maximum-subarray/submissions/
*/
func maxSubArray(nums []int) int {
    sum, max_sum := 0, 0
    max := func(a, b int) int {
        if a > b {
            return a
        }
        return b
    }
    for i,value := range nums{
        if 0 == i {
            sum = value
            max_sum = sum
        }else{
            sum = max(value, sum+value)
            max_sum = max(sum, max_sum)
        }
    }
    return max_sum
    
}


    func main() {
        fmt.Println("alias x='go run 20190913_Friday/20190913.go'")
    }
