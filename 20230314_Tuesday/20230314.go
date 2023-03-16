// Leetcode: 129. Sum Root to Leaf Numbers.
// https://leetcode.com/problems/sum-root-to-leaf-numbers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 17.15% of Go online submissions for Sum Root to Leaf Numbers.
// Memory Usage: 2.2 MB, less than 83.82% of Go online submissions for Sum Root to Leaf Numbers.
// 2023.03.16 Update.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var sum int

func sumNumbers(root *TreeNode) int {
	sum = 0
	dfs(0, root)
	return sum
}

func dfs(num int, x *TreeNode) {
	if nil == x {
		return
	}
	num = num*10 + x.Val
	if nil == x.Left && nil == x.Right {
		sum += num
		return
	}
	dfs(num, x.Left)
	dfs(num, x.Right)
}
