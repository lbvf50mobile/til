// Leetcode: 1353. Maximum Number of Events That Can Be Attended
// https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"container/heap"
	"sort"
)

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *IntHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func maxEvents(events [][]int) int {
	// Ok. The Idea: Iterate over all days, each day select the event that
	// going to finish soon.
	maxDay := findMax(events)

	// Sort by the start day.
	sort.Slice(events, func(i, j int) bool { return events[i][0] < events[j][0] })

	// Answer: amount of events attended.
	ans := 0
	ei := 0 // Event index.
	h := &IntHeap{}
	heap.Init(h)

	for day := 1; day <= maxDay; day += 1 {
		// Now Push to heap all events that start early.
		for ; ei < len(events) && events[ei][0] <= day; ei += 1 {
			heap.Push(h, events[ei][1])
		}
		// Pop all events that already finised
		for 0 < h.Len() && (*h)[0] < day {
			heap.Pop(h)
		}
		// Select event that will be finished as soon as possible.
		if 0 < h.Len() {
			heap.Pop(h)
			ans += 1
		}
	}
	return ans

}

func findMax(events [][]int) int {
	ans := 0
	for _, v := range events {
		ans = max(ans, v[1])
	}
	return ans
}
