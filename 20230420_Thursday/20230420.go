// Leetcode: 662. Maximum Width of Binary Tree.
// https://leetcode.com/problems/maximum-width-of-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 89.13% of Go online submissions for Maximum Width
// of Binary Tree.
// Memory Usage: 4.6 MB, less than 34.78% of Go online submissions for Maximum
// Width of Binary Tree.
// 2023.04.20 Daily Challenge.
package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

// qel - queue element.
type qel struct {
	x    int // Number in a tree's level.
	node *TreeNode
}

func widthOfBinaryTree(root *TreeNode) int {
	q := make([]*qel, 0)
	q = append(q, &qel{1, root})
    max := 0
	for 0 != len(q) {
		width := q[len(q)-1].x - q[0].x + 1
		if max < width {
			max = width
		}
		nq := make([]*qel, 0)
        for _, el := range q {
			x, node := el.x, el.node
			if nil != node.Left {
				nq = append(nq, &qel{2*x - 1, node.Left})
			}
			if nil != node.Right {
				nq = append(nq, &qel{2 * x, node.Right})
			}
		}
		q = nq
	}
	return max
}
