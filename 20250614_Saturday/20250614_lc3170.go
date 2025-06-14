// Leetcode: 3170. Lexicographically Minimum String After Removing Stars
// https://leetcode.com/problems/lexicographically-minimum-string-after-removing-stars/description/?envType=daily-question&envId=2025-06-07
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

import (
	"container/heap"
)

type node struct {
	i int
	c rune
}

type pq []*node

func (q pq) Len() int { return len(q) }
func (q pq) Less(i, j int) bool {
	if q[i].c == q[j].c {
		// Select one with bigger index.
		return q[i].i > q[j].i
	} else {
		// Select one with lower lex. order.
		return q[i].c < q[j].c
	}
}
func (q pq) Swap(i, j int) {
	q[i], q[j] = q[j], q[i]
}
func (q *pq) Push(x any) {
	item := x.(*node)
	*q = append(*q, item)
}
func (q *pq) Pop() any {
	old := *q
	n := len(old)
	item := old[n-1]
	old[n-1] = nil // GC
	*q = old[:n-1]
	return item
}

func clearStars(s string) string {

	// Create a deleted array.
	deleted := make([]bool, len(s))

	// As well as queue.
	q := make(pq, 0, len(s))

	// Push if not asterisk.
	// Pop if asteriks.
	for i, c := range s {
		if '*' == c {
			deleted[i] = true // asterisk is deleted
			if 0 < len(q) {
				x := heap.Pop(&q).(*node)
				deleted[x.i] = true // delete poped element to.
			}

		} else {
			heap.Push(&q, &node{i, c})
		}
	}
	// Generate an ans.
	ans := make([]rune, 0, len(s))
	for i, c := range s {
		// Now I add to ans ones that are not deleted, or mark as deleted.
		// Yep. It is cool.
		if !deleted[i] {
			ans = append(ans, c)
		}
	}
	return string(ans)
}
