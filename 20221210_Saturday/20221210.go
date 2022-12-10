// Leetcode: 1339. Maximum Product of Splitted Binary Tree.
// https://leetcode.com/problems/maximum-product-of-splitted-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 161 ms, faster than 80.00% of Go online submissions for Maximum Product of Splitted Binary Tree.
// Memory Usage: 28.6 MB, less than 20.00% of Go online submissions for Maximum Product of Splitted Binary Tree.
// 2022.12.10 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var sum int64
var a []int64
func maxProduct(root *TreeNode) int {
  sum = 0
  a = make([]int64,0)
  dfs(root)
  max := (sum - a[0]) * a[0]
  for _, v := range a {
    tmp := (sum-v) * v
    if tmp > max {
      max = tmp
    }
  }
  return int(max % 1000000007)
}

func dfs(r *TreeNode) int64{
  if nil == r {
    return 0
  }
  x := int64(r.Val)
  b, c := dfs(r.Left), dfs(r.Right)
  sum += x
  if 0 < b {
    a = append(a,b)
  }
  if 0 < c {
    a = append(a,c)
  }
  return x + b + c
}
