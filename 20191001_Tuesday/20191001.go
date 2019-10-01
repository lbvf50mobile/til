    package main

    import (
        "fmt"
    )

    /*
https://leetcode.com/problems/pascals-triangle/submissions/
Runtime: 0 ms, faster than 100.00% of Go online submissions for Pascal's Triangle.
Memory Usage: 2.3 MB, less than 100.00% of Go online submissions for Pascal's
*/
func generate(numRows int) [][]int {
    answer := make([][]int,numRows);
    for i := 0; i < numRows; i += 1{
        a := make([]int,i+1)
        // add ones
        a[0],a[i] = 1, 1
        
        if i > 1 {
            for j := 1; j <= i/2; j+=1 {
                a[j] = answer[i-1][j-1] + answer[i-1][j]
                a[len(a) - 1 - j] = a[j]
            } 
        }
        answer[i] = a
    }
    return answer;
}
    
    func main() {
        fmt.Println(generate(5))
    }
