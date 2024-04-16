// Leetcode:  623. Add One Row to Tree.
// https://leetcode.com/problems/add-one-row-to-tree/
// In action.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func addOneRow(root *TreeNode, val int, depth int) *TreeNode {
	q1 := make([]*TreeNode, 0)
	q1 = append(q1, root)
	for i := 1; 0 != len(q1); i += 1 {
		var q2 []*TreeNode
		if i+1 == depth {
			for _, v := range q1 {
				if nil != v.Left {
					tmp := &TreeNode{val, nil, nil}
					tmp.Left = v.Left
					v.Left = tmp
					q2 = append(q2, tmp)
				}
				if nil != v.Right {
					tmp := &TreeNode{val, nil, nil}
					tmp.Right = v.Right
					v.Right = tmp // <==== Here.
					q2 = append(q2, tmp)
				}
			}
		} else {
			for _, v := range q1 {
				if nil != v.Left {
					q2 = append(q2, v.Left)

				}
				if nil != v.Right {
					q2 = append(q2, v.Right)
				}
			}
		}
		q1 = q2
		q2 = nil
	}
	return root
}
