// Leetcode: 2415. Reverse Odd Levels of Binary Tree
// https://leetcode.com/problems/reverse-odd-levels-of-binary-tree/
package main

import (
// "fmt"
)

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

// Slab is a level in a Tree.
type Slab struct {
	row []*TreeNode
	n   int
}

// Push new node into a slab.
func (s *Slab) Push(x *TreeNode) {
	s.row[s.n] = x
	s.n += 1
}

// Reset.
func (s *Slab) Zero() {
	s.n = 0
}

func (s *Slab) ReverseValues() {
	i := 0
	j := s.n - 1
	for i < j{
		a, b := s.row[i], s.row[j]
		a.Val, b.Val = b.Val, a.Val
		i += 1
		j -= 1
	}
}

func reverseOddLevels(root *TreeNode) *TreeNode {
	level := 0     // It is a current level.
	max := 10_0000 // 10**5 is a maximum amount of nodes.
	// Two slabs, one is current, second is next one to fill it.
	a, b := Slab{make([]*TreeNode, max), 0}, Slab{make([]*TreeNode, max), 0}
	cur := &a // Operate with pointers, to avoid memory allocations.
	nxt := &b
	cur.Push(root) // Add root.
	for cur.n > 0 {
		// reverse values in the slab
		if 1 == cur.n%2 {
			cur.ReverseValues()
		}
		// Fill nxt slab.
		for i := 0; i < cur.n; i += 1 {
			node := cur.row[i]
			if node.Left != nil {
				nxt.Push(node.Left)
			}
			if node.Right != nil {
				nxt.Push(node.Right)
			}
		}
		// Pepare to the next itaration.
		cur, nxt = nxt, cur
		nxt.Zero()
		level += 1
	}
	return root
}
