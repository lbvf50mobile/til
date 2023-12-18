// Leetcode: 1913. Maximum Product Difference Between Two Pairs.
// https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// 2023.12.18 Daily Challenge.

package main

type minHeap []int

func (h minHeap) Len() in            { return len(h) }
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

func maxProductDifference(nums []int) int {
	// MinHeap fill if bigger. Smallest on the top. Store BIG.
	// MaxHeap fill if smaller. Biggest on the top. Store SMALL.
}
