// Leetcode: 1353. Maximum Number of Events That Can Be Attended
// https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended/description/?envType=daily-question&envId=2025-07-07
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"container/heap"
	"sort"
)

type MinHeap []int

func (h MinHeap) Len() int           { return len(h) }
func (h MinHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h MinHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *MinHeap) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *MinHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[:n-1]
	return x
}

func maxEvents(events [][]int) int {
	n := len(events)
	maxD := 0
	for _, e := range events {
		if e[1] > maxD {
			maxD = e[1]
		}
	}
	sort.Slice(events, func(i, j int) bool {
		return events[i][0] < events[j][0]
	})
	ans := 0
	q := &MinHeap{}
	for i, j := 1, 0; i <= maxD; i += 1 {
		for j < n && events[j][0] <= i {
			heap.Push(q, events[j][1])
			j += 1
		}
		for q.Len() > 0 && (*q)[0] < i {
			heap.Pop(q)
		}
		if q.Len() > 0 {
			heap.Pop(q)
			ans += 1
		}
	}
	return ans

}
