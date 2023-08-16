// Leetcode: 239. Sliding Window Maximum.
// https://leetcode.com/problems/sliding-window-maximum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 432 ms, faster than 14.13% of Go online submissions for Sliding
// Window Maximum.
// Memory Usage: 11.2 MB, less than 41.55% of Go online submissions for Sliding
// Window Maximum.
// 2023.08.16 Daily Challenge.
package main

import (
	"container/heap"
)

func maxSlidingWindow(nums []int, k int) []int {
	// Create a counter.
	used := make(map[int]int)
	// Create a heap.
	h := &MaxHeap{}
	heap.Init(h)
	// Prepare for loops, and create an answer.
	n := len(nums)
	ans := make([]int, n - k + 1)
	pos := 0
	// Fill first sliding window postion.
	for i := 0; i < k; i += 1 {
		// get current value.
		x := nums[i]
		// Increase a counter.
		used[x] += 1
		// Push into heap only ones.
		// Heap does not store duplicates
		if 1 == used[x] {
			heap.Push(h, x)
		}
	}
	// Save first index for the answer.
	ans[pos] = h.top()
	pos += 1 // Update pos!
	// Next positions of the sliding window.
	for j := k; j < n; j += 1 {
		// Set indices and get values.
		i := j - k
		curr := nums[j]
		prev := nums[i]
		// Change counter values.
		used[curr] += 1
		used[prev] -= 1
		// Remove all unsued bigs.
		// Remove only if there is something to remove.
		for 0 != h.Len() && 0 == used[h.top()] {
			heap.Pop(h)
		}
		// If it is a new value ad it to the heap.
		if 1 == used[curr] {
			heap.Push(h, curr)
		}
		// Save an answer for a current index.
		ans[pos] = h.top()
		pos += 1 // Update pos!
	}
	return ans
}

type MaxHeap []int

// Less, Swap, Len.
func (h MaxHeap) Len() int           { return len(h) }
func (h MaxHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h MaxHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h MaxHeap) top() int           { return h[0] }

// Push and Pop.
func (h *MaxHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}
func (h *MaxHeap) Pop() interface{} {
	old := *h
	n := len(old)
	ans := old[n-1]
	*h = old[:n-1]
	return ans
}
