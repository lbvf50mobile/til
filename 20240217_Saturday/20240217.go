// Leetcode: 1642. Furthest Building You Can Reach.
// https://leetcode.com/problems/furthest-building-you-can-reach/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 76 ms, faster than 56.52% of Go online submissions for Furthest
// Building You Can Reach.
// Memory Usage: 8.4 MB, less than 52.17% of Go online submissions for
// Furthest Building You Can Reach.
// 2024.02.17 Daily Challenge.

package main

import (
	"container/heap"
)

type ih []int

func (h ih) Len() int           { return len(h) }
func (h ih) Less(i, j int) bool { return h[i] < h[j] }
func (h ih) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *ih) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *ih) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func furthestBuilding(heights []int, bricks int, ladders int) int {
	// Based on:
	// https://leetcode.com/problems/furthest-building-you-can-reach/discuss/918515/JavaC%2B%2BPython-Priority-Queue
	h := &ih{}
	for i := 0; i < (len(heights) - 1); i += 1 {
		d := heights[i+1] - heights[i]
		if d > 0 {
			heap.Push(h, d)
		}
		if h.Len() > ladders {
			bricks -= heap.Pop(h).(int)
		}
		if bricks < 0 {
			return i
		}
	}
	return len(heights) - 1
}
