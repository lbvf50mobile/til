// Leetcode: 506. Relative Ranks.
// https://leetcode.com/problems/relative-ranks/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 14 ms, faster than 32.00% of Go online submissions for Relative
// Ranks.
// Memory Usage: 6.1 MB, less than 54.00% of Go online submissions for
// Relative Ranks.
// 2024.05.08 Daily Challenge.
// 2024.05.09 Updated.

package main

import (
	"container/heap"
	"strconv"
)

var medals = []string{"Gold Medal", "Silver Medal", "Bronze Medal"}

func findRelativeRanks(score []int) []string {
	q := &maxQ{}
	n := len(score)
	ans := make([]string, len(score))
	heap.Init(q)
	for i, v := range score {
		heap.Push(q, &el{v, i})
	}
	for i := 0; i < n; i += 1 {
		item := heap.Pop(q).(*el)
		index := item.i
		var level string
		if i < 3 {
			level = medals[i]
		} else {
			level = strconv.Itoa(i + 1)
		}
		ans[index] = level
	}
	return ans
}

func FindRelativeRanks(score []int) []string {
	return findRelativeRanks(score)

}

// 1. Need to define an element of the Queue.
type el struct {
	val int
	i   int
}

// 2. Need to define a priority DataType.
type maxQ []*el

// 3. Len, Less, Swap.
func (q maxQ) Len() int           { return len(q) }
func (q maxQ) Less(i, j int) bool { return q[i].val > q[j].val }
func (q maxQ) Swap(i, j int)      { q[i], q[j] = q[j], q[i] }

// 4. Push and Pop.
func (q *maxQ) Push(x interface{}) {
	*q = append(*q, x.(*el))
}
func (q *maxQ) Pop() interface{} {
	old := *q
	n := len(old)
	ans := old[n-1]
	old[n-1] = nil
	*q = old[0 : n-1]
	return ans
}
