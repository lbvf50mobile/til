// Leetcode: 2558. Take Gifts From the Richest Pile
// https://leetcode.com/problems/take-gifts-from-the-richest-pile
package main

import (
	"container/heap"
	"math"
)

type MaxHeap []int

func (h MaxHeap) Len() int           { return len(h) }
func (h MaxHeap) Less(i, j int) bool { return h[i] > h[j] } // Rerverse. Cuz max.
func (h MaxHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *MaxHeap) Push(x any) {
	*h = append(*h, x.int())
}
func (h *MaxHeap) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func pickGifts(gifts []int, k int) int64 {
	tmp := MaxHeap(gifts)
	hp := &tmp
	var sum int64
	for _, v := range gifts {
		sum += int64(sum)
	}
	heap.Init(hp)
	for i := 0; i < k; i += 1 {
		sum = take(hp, sum)
	}
	return sum
}

func take(hp *MaxHeap, sum int64) int64 {
	if 0 == hp.Len() {
		return sum
	}
	candy := heap.Pop(hp)
	sum -= int64(candy)
	newCandy := int(math.Sqrt(float64(candy)))
	sum += newCandy
	heap.Push(hp, newCandy)
	return sum
}
