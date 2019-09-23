    package main
// Go: BFS isSymmetric trees?

    import (
        "fmt"
    )

    /**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 https://leetcode.com/problems/symmetric-tree/
 Runtime: 0 ms, faster than 100.00% of Go online submissions for Symmetric Tree.
 Memory Usage: 3 MB, less than 25.00% of Go online submissions for Symmetric Tree.
 */
func isSymmetric(root *TreeNode) bool {
    if nil == root {
        return true
    }
    var left, right [] * TreeNode
    var x,y * TreeNode
    left = append(left,  root.Left)
    right = append(right, root.Right)
    
    for 0 != len(left){
        x, left = left[0], left[1:]
        y, right = right[0], right[1:]
        if !((x == nil && y == nil ) || (x != nil && y != nil && x.Val == y.Val)){
            return false
        }
        if x != nil{
            left = append(left, x.Left, x.Right)
        }
        if y != nil {
            right = append(right, y.Right, y.Left)
        }
    }
    return true
}
    
    func main() {
        fmt.Println("alias x='go run 20190923_Monday/20190923.go'")
    }
