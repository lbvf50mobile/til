// Leetcode: 101. Symmetric Tree.
// https://leetcode.com/problems/symmetric-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 66.57% of Go online submissions for Symmetric Tree.
// Memory Usage: 3 MB, less than 14.72% of Go online submissions for Symmetric Tree.
// 2023.03.14 Updated.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func isSymmetric(root *TreeNode) bool {
	q := make([]*TreeNode, 0)
	nq := make([]*TreeNode, 0)
	q = append(q, root)
	for 0 != len(q) {
		nq = nq[:0]
		if !sym(q) {
			return false
		}
		for _, x := range q {
			if nil == x {
				continue
			}
			nq = append(nq, x.Left)
			nq = append(nq, x.Right)
		}
		q, nq = nq, q
	}
	return true
}

func sym(arr []*TreeNode) bool {
	i, j := 0, len(arr)-1
	for i < j {
		if nil == arr[i] || nil == arr[j] {
			if nil != arr[i] || nil != arr[j] {
				return false
			}
		} else {
			if arr[i].Val != arr[j].Val {
				return false
			}
		}
		i += 1
		j -= 1
	}
	return true
}
