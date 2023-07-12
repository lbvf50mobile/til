// Leetcode: 863. All Nodes Distance K in Binary Tree.
// https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 50.88% of Go online submissions for All Nodes
// Distance K in Binary Tree.
// Memory Usage: 3.3 MB, less than 80.70% of Go online submissions for All Nodes
// Distance K in Binary Tree.
// 2023.07.12 Updated.
package main

import ()

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var visited map[*GraphNode]bool
var ans []int
var tgt *GraphNode

type GraphNode struct {
	Val   int
	Left  *GraphNode
	Right *GraphNode
	Top   *GraphNode
}

func distanceK(root *TreeNode, target *TreeNode, k int) []int {
	ans = make([]int, 0)
	visited = make(map[*GraphNode]bool)
	buildGraph(root, nil, target)
	fillAnswer(tgt, k)
	return ans
}
func buildGraph(node *TreeNode, top *GraphNode, target *TreeNode) *GraphNode {
	if nil == node {
		return nil
	}
	x := &GraphNode{node.Val, nil, nil, top}
	if node == target {
		tgt = x
	}
	left := buildGraph(node.Left, x, target)
	right := buildGraph(node.Right, x, target)
	x.Left = left
	x.Right = right
	return x
}

func fillAnswer(vertex *GraphNode, dist int) {
	if nil == vertex {
		return
	}
	visited[vertex] = true
	if 0 == dist {
		ans = append(ans, vertex.Val)
		return
	}
	_, vtop := visited[vertex.Top]
	_, vleft := visited[vertex.Left]
	_, vright := visited[vertex.Right]
	if nil != vertex.Top && (!vtop) {
		fillAnswer(vertex.Top, dist-1)
	}
	if nil != vertex.Left && (!vleft) {
		fillAnswer(vertex.Left, dist-1)
	}
	if nil != vertex.Right && (!vright) {
		fillAnswer(vertex.Right, dist-1)
	}
}
