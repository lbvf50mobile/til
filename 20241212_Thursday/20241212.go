// Leetcode: 2558. Take Gifts From the Richest Pile
// https://leetcode.com/problems/take-gifts-from-the-richest-pile
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Take Gifts
// From the Richest Pile.
// Memory Usage: 4.6 MB, less than 35.29% of Go online submissions for Take
// Gifts From the Richest Pile.
// 2024.12.12 Daily Challenge.

package main

import (
	"container/heap"
	// "fmt"
	"math"
)

// var p = fmt.Println

type MaxHeap []int

func (h MaxHeap) Len() int           { return len(h) }
func (h MaxHeap) Less(i, j int) bool { return h[i] > h[j] } // Rerverse. Cuz max.
func (h MaxHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *MaxHeap) Push(x any) {
	*h = append(*h, x.(int))
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
		sum += int64(v)
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
	candy := heap.Pop(hp).(int)
	// p("the candy", candy)
	sum -= int64(candy)
	newCandy := int(math.Floor(math.Sqrt(float64(candy))))
	sum += int64(newCandy)
	heap.Push(hp, newCandy)
	// p("candy", candy, "new candy", newCandy)
	return sum
}
