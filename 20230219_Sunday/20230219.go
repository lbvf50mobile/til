// Leetcode: 103. Binary Tree Zigzag Level Order Traversal.
// https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 60.10% of Go online submissions for Binary Tree Zigzag Level Order Traversal.
// Memory Usage: 2.5 MB, less than 88.46% of Go online submissions for Binary Tree Zigzag Level Order Traversal.
// 2023.02.19 Daily Challenge!
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func zigzagLevelOrder(root *TreeNode) [][]int {
  ans := make([][]int,0)
  if nil == root { return ans } 
  q := make([]*TreeNode,0) 
  q = append(q,root)
  r := true
  for 0 != len(q) {
    tmp := make([]int,0)
    qn := make([] *TreeNode,0)
    r = !r
    for _,n := range q {
      if nil != n.Left { qn = append(qn,n.Left)}
      if nil != n.Right { qn = append(qn,n.Right)}
      tmp = append(tmp, n.Val)
    }
    if r { tmp = rev(tmp) }
    ans = append(ans, tmp)
    q = qn
  }
  return ans
}

func rev(x []int) []int{
  for i,j := 0, len(x)-1; i < j; i,j = i+1, j-1{
    x[i],x[j] = x[j],x[i]
  }
  return x
}
