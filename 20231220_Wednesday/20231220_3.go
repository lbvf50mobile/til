// Leetcode: 2706. Buy Two Chocolates.
// https://leetcode.com/problems/buy-two-chocolates/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 79.07% of Go online submissions for Buy Two
// Chocolates.
// Memory Usage: 3.5 MB, less than 20.93% of Go online submissions for Buy Two
// Chocolates.
// 2023.12.20 Daily Challenge.

package main

import (
	"container/heap"
)

type maH []int

func (h maH) Len() int           { return len(h) }
func (h maH) Less(i, j int) bool { return h[i] > h[j] }
func (h maH) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *maH) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *maH) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func buyChoco(prices []int, money int) int {
	var a, b int
	n := len(prices)
	h := &maH{prices[0], prices[1]}
	heap.Init(h)
	for i := 2; i < n; i += 1 {
		x := prices[i]
		rh := *h
		if rh[0] > x {
			heap.Pop(h)
			heap.Push(h, x)
		}
	}
	rh := *h
	a, b = rh[0], rh[1]
	if money >= a+b {
		return money - (a + b)
	} else {
		return money
	}
}
