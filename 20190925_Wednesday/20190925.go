    package main
// Go: Structures and two dimensional slices.
    import (
        "fmt"
    )

    /**
 * Definition for a binary tree node.
  type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 https://gist.github.com/lbvf50mobile/4b919b54296e22b1270ef1482c1a5996
 https://leetcode.com/problems/binary-tree-level-order-traversal-ii/
 Runtime: 0 ms, faster than 100.00% of Go online submissions for Binary Tree Level Order Traversal II.
Memory Usage: 6.6 MB, less than 100.00% of Go online submissions for Binary Tree Level Order Traversal II.
 */
	
type point_level struct {
    pnt * TreeNode
    lvl  int
}
type TreeNode struct {
      Val int
       Left *TreeNode
         Right *TreeNode
     }
func levelOrderBottom(root *TreeNode) [][]int {
    
    var queue [] point_level
    var current point_level
    ongoing_level := -1
    values := [][]int{}
    
    queue = append(queue, point_level{pnt: root, lvl: 0})
    
    
    for 0 != len(queue) {
        current, queue = queue[0], queue[1:]
        pnt := current.pnt
        if nil != current.pnt {
            lft := pnt.Left
            rgt := pnt.Right
            val := pnt.Val
            lvl := current.lvl + 1
            if ongoing_level < current.lvl {
                ongoing_level = current.lvl
                values = append([][]int{{}},values...)
            }
            values[0] = append(values[0], val)
            queue = append(queue, point_level{pnt: lft, lvl: lvl}, point_level{pnt: rgt, lvl: lvl})
        }
    }
   
    return values
}
    
    func main() {
        fmt.Println("alias x='go run 20190925_Wednesday/20190925.go'")
    }
