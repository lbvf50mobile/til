// Leetcode: 2385. Amount of Time for Binary Tree to Be Infected.
// https://leetcode.com/problems/amount-of-time-for-binary-tree-to-be-infected/

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

type Node struct {
	Val   int
	Top   *Node
	Left  *Node
	Right *Node
}

var theRoot *Node
var theStart *Node

func amountOfTime(root *TreeNode, start int) int {
	theRoot, theStart = nil, nil
	// 1. Generate Graph.
	graphGenerator(root, start)
	// 2. Iterate over the Graph by a Layered BFS.
	return layers() - 1

}

type Pair struct {
	Top  *Node
	Curr *TreeNode
	Left bool
}

func graphGenerator(root *TreeNode, start int) {
	// It's going to be BFS.
	theRoot = nil

	q := make([]*Pair, 1)
	q[0] = &Pair{nil, root, false}

	for 0 != len(q) {
		el := q[0]
		parent, current, left := el.Top, el.Curr, el.Left
		q = q[1:]
		node := &Node{current.Val, parent, nil, nil}
		if nil != parent {
			if left {
				parent.Left = node
			} else {
				parent.Right = node
			}
		}
		if nil == theRoot {
			threRoot = node
		}
		if start == node.Val {
			theStart = node
		}
		if nil != current.Left {
			pair := &Pair{node, current.Left, true}
			q = append(q, pair)
		}
		if nil != current.Right {
			pair := &Pair{node, current.Rigt, false}
			q = append(q, pair)
		}
	}
}

func layers() int {
	visited := make(map[*Node]bool)
	q := make([]*Node, 1)
	visited[theStart] = true
	q[0] = theStart
	ans := 0
	for 0 != len(q) {
		nq := make([]*Node, 0)
		ans += 1
		for _, v := range q {
			if nil != v.Top && (!visied[v.Top]) {
				visited[v.Top] = true
				nq = append(nq, v.Top)
			}
			if nil != v.Left && (!visied[v.Left]) {
				visited[v.Left] = true
				nq = append(nq, v.Left)
			}
			if nil != v.Right && (!visied[v.Right]) {
				visited[v.Right] = true
				nq = append(nq, v.Right)
			}
		}
		q = nq
	}
	return ans
}
