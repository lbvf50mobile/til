// Leetcode: 623. Add One Row to Tree.
// https://leetcode.com/problems/add-one-row-to-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 55.17% of Go online submissions for Add One Row
// to Tree.
// Memory Usage: 5.8 MB, less than 100.00% of Go online submissions for Add
// One Row to Tree.
// 2024.04.16 Dayily Challange, copied from 2022.10.06.

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func addOneRow(root *TreeNode, val int, depth int) *TreeNode {
  if 1 == depth {
    el := &TreeNode{Val: val, Left: root, Right: nil}
    return el
  }
  root.Left = rec(root.Left, val, depth-1, 'l')
  root.Right = rec(root.Right, val, depth-1,'r')
  return root
}

func rec(x *TreeNode, val int, d int, side int) *TreeNode{
  if d < 1 { return x}
  if 1 == d {
    el := &TreeNode{Val: val, Left: nil, Right: nil}
    if 'l' == side {
      el.Left = x
    }
    if 'r' == side{
      el.Right = x
    }
    return el
  }
  if nil == x { return x}
  x.Left = rec(x.Left, val, d-1, 'l')
  x.Right = rec(x.Right, val, d-1, 'r')
  return x
}
