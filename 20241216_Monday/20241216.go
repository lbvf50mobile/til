// Leetcode: 3264. Final Array State After K Multiplication Operations I
// https://leetcode.com/problems/final-array-state-after-k-multiplication-operations-i/

package main

import (
	"container/heap"
)

type Good [][]int

func (h Good) Len() int      { return len(h) }
func (h Good) Swap(i, j int) { h[i], h[j] = h[j], h[i] }
func (h Good) Less(i, j int) bool {
	if h[i][1] == h[j][1] {
		return h[i][0] < h[j][0]
	}
	return h[i][1] < h[j][1]
}

func (h *Good) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
func (h *Good) Push(x any) {
	*h = append(*h, x.([]int))
}

func getFinalState(nums []int, k int, multiplier int) []int {
	tmp := make(Good, len(nums))
	hp := &tmp
	for i, v := range nums {
		tmp := *hp
		tmp[i] = []int{i, v}
	}
	heap.Init(hp)
	for i := 0; i < k; i += 1 {
		tmp := heap.Pop(hp).([]int)
		tmp[1] = tmp[1] * multiplier
		heap.Push(hp, tmp)
	}
	for _, v := range *hp {
		nums[v[0]] = v[1]
	}
	return nums
}
