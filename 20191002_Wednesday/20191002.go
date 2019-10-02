    package main

// Leetcode: Pacal Triangle #2.   
    
// https://gist.github.com/lbvf50mobile/bedcb250c414b9906c50eeb398a5ee1d



    import (
        "fmt"
    )


/*
https://leetcode.com/problems/pascals-triangle-ii/submissions/
Runtime: 0 ms, faster than 100.00% of Go online submissions for Pascal's Triangle II.
Memory Usage: 2.1 MB, less than 100.00% of Go online submissions for Pascal's Triangle II.
*/
func getRow(rowIndex int) []int {
    var prev,curr []int
    if 0 == rowIndex {
        prev = make([]int,1)
        prev[0] = 1
        return prev
    }
    prev = make([]int,2)
    prev[0],prev[1] = 1,1
    if 1 == rowIndex{
        return prev
    }
    for i := 2; i <= rowIndex; i += 1{
        curr = make([]int,i+1)
        curr[0],curr[len(curr)-1] = 1, 1
        for j := 1; j <= i/2; j +=1 {
            curr[j] = prev[j-1] + prev[j]
            curr[len(curr) - 1 - j] = curr[j]
            
        }
        prev = curr
        
    }
    return curr
    
    
}
    
    func main() {
        fmt.Println("alias x='go run 20191002_Wednesday/20191002.go'")
        fmt.Println("Pascal Triangle #2", getRow(5))

    }
