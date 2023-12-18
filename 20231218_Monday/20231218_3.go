// Leetcode: 1913. Maximum Product Difference Between Two Pairs.
// https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 15 ms, faster than 96.05% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// Memory Usage: 6.9 MB, less than 14.47% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// 2023.12.18 Daily Challenge.

package main

import (
	"container/heap"
)

type minHeap []int

func (h minHeap) Len() int           { return len(h) }
func (h minHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h minHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *minHeap) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *minHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

type maxHeap []int

func (h maxHeap) Len() int           { return len(h) }
func (h maxHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h maxHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *maxHeap) Push(x any) {
	*h = append(*h, x.(int))
}
func (h *maxHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func maxProductDifference(nums []int) int {
	// MinHeap. Stores 2 biggest values.
	hMi := &minHeap{nums[0], nums[1]}
	// MaxHeap. Stores 2 smallest values.
	hMa := &maxHeap{nums[0], nums[1]}
	heap.Init(hMi)
	heap.Init(hMa)
	// MinHeap fill if bigger. Smallest on the top. Store BIG.
	// MaxHeap fill if smaller. Biggest on the top. Store SMALL.
	for _, v := range nums[2:] {
		mih := *hMi
		mah := *hMa
		if v > mih[0] {
			heap.Pop(hMi)
			heap.Push(hMi, v)
		}
		if v < mah[0] {
			heap.Pop(hMa)
			heap.Push(hMa, v)
		}
	}
	mih := *hMi
	mah := *hMa
	return (mih[0] * mih[1]) - (mah[0] * mah[1])
}
