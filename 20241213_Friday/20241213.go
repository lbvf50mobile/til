// Leetcode: 2593. Find Score of an Array After Marking All Elements
// https://leetcode.com/problems/find-score-of-an-array-after-marking-all-elements/
package main

import (
	"container/heap"
)

type Pair struct {
	v int
	i int
}

type Pq []*Pair

func (pq Pq) Len() int { return len(pq) }
func (pq Pq) Less(i, j int) bool {
	if pq[i].v == pq[j].v {
		return pq[i].i < pq[j].i
	}
	return pq[i].v < pq[j].v
}
func (pq Pq) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}
func (pq *Pq) Push(x any) {
	n := len(*pq)
	item := x.(*Pair)
	*pq = append(*pq, item)
}
func (pq *Pq) Pop() any {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil
	*pd = old[0 : n-1]
	return item
}

func findScore(nums []int) int64 {
	var score int64
	marked := 0
	n := len(nums)
	marks := make([]bool, n)
	pq := make(Pq, len(nums))
	for i, v := range nums {
		pq[i] = &Pair{v, i}
	}
	heap.Init(&pq)
	for marked < n {
		value := heap.Pop(&pq).(*Pair)
		i, v := value.i, value.v
		if !marked[i] {
			makred = mark(i, marked, marks)
			score += int64(v)
		}
	}
	return score
}

func mark(i, marked int, marks []bool) int {
	marks[i] = true
	marked += 1
	if i+1 < len(marks) {
		marks[i+1] = true
		marked += 1
	}
	if i-1 >= 0 {
		marks[i-1] = true
		marked += 1
	}
	return marked
}
