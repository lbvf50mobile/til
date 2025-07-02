// 2099. Find Subsequence of Length K With the Largest Sum
// https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum/description/?envType=daily-question&envId=2025-06-28
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"container/heap"
	"sort"
)

// An Init Heap is min-heap of its. With indices.

type IntHeap [][2]int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i][1] < h[j][1] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *IntHeap) Push(x any) {
	*h = append(*h, x.([2]int))
}
func (h *IntHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func maxSubsequence(nums []int, k int) []int {
	h := &IntHeap{}
	for i, v := range nums {
		if h.Len() < k {
			heap.Push(h, [2]int{i, v})
		} else {
			// MinHeap of Largest.
			if (*h)[0][1] < v {
				heap.Pop(h)
				heap.Push(h, [2]int{i, v})
			}
		}
	}
	tmp := *h
	sort.Slice(tmp, func(i, j int) bool { return tmp[i][0] < tmp[j][0] })
	ans := make([]int, k)
	for i, v := range tmp {
		ans[i] = v[1]
	}
	return ans

}
