// Leetcode: 1845. Seat Reservation Manager.
// https://leetcode.com/problems/seat-reservation-manager/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 325 ms, faster than 61.54% of Go online submissions for Seat
// Reservation Manager.
// Memory Usage: 27.4 MB, less than 100.00% of Go online submissions for Seat
// Reservation Manager.
// 2023.11.06 Daily Challenge.
package main

import (
	"container/heap"
)

type SeatManager struct {
	val *Heap
}

func Constructor(n int) SeatManager {
	x := make([]int, n)
	for i := 0; i < n; i += 1 {
		x[i] = i + 1
	}
	tmp := &Heap{}
	tmp.cp(x)
	return SeatManager{tmp}
}

func (this *SeatManager) Reserve() int {
	return heap.Pop(this.val).(int)

}

func (this *SeatManager) Unreserve(seatNumber int) {
	heap.Push(this.val, seatNumber)
}

type Heap []int

func (h Heap) Len() int           { return len(h) }
func (h Heap) Less(i, j int) bool { return h[i] < h[j] }
func (h Heap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *Heap) cp(x []int){
	*h = x
}

func (h *Heap) Push(x interface{}) {
	*h = append(*h, x.(int))
}
func (h *Heap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

/**
 * Your SeatManager object will be instantiated and called as such:
 * obj := Constructor(n);
 * param_1 := obj.Reserve();
 * obj.Unreserve(seatNumber);
 */
