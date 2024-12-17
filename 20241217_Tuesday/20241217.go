// Leetcode: 2182. Construct String With Repeat Limit
// https://leetcode.com/problems/construct-string-with-repeat-limit/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 73 ms, faster than 22.22% of Go online submissions for Construct
// String With Repeat Limit.
// Memory Usage: 9.1 MB, less than 60.00% of Go online submissions for
// Construct String With Repeat Limit.
// 2024.12.17 Daily Challenge.

package main

import (
	"container/heap"
	// "fmt"
)

// Max heap.
type Mh [][]int

func (h Mh) Len() int { return len(h) }

// Here it is Max Heap.
func (h Mh) Less(i, j int) bool { return h[i][0] > h[j][0] } // Here was an error!
func (h Mh) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *Mh) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func (h *Mh) Push(x any) {
	*h = append(*h, x.([]int))
}

func createHeap(s string) *Mh {
	counter := make([]int, 26)
	for _, v := range s {
		counter[int(v)-int('a')] += 1
	}
	hp := &Mh{}
	heap.Init(hp)

	for i, v := range counter {
		if 0 == v {
			continue
		}
		// Symbol, Amount.
		heap.Push(hp, []int{i, v})
	}
	return hp
}

func repeatLimitedString(s string, repeatLimit int) string {
	l := repeatLimit
	size := len(s)
	prev := -1 // previous simbol code
	n := 0     // size of current constructed string
	ans := make([]byte, size)
	hp := createHeap(s)
	for n < size {
		// Take top.
		first := heap.Pop(hp).([]int)
		// Top must not be prev.
		if prev != first[0] {
			prev = first[0]
			amount := min(l, first[1])
			n = insert(ans, n, first[0], amount)
			first[1] -= amount
			if 0 != first[1] {
				heap.Push(hp, first)
			}
			continue
		}
		// No second to pop. Return.
		if 0 == hp.Len() {
			return ansReturn(ans, n)
		}
		// Ho ho, there is a second.
		second := heap.Pop(hp).([]int)
		amount := 1
		prev = second[0]
		n = insert(ans, n, second[0], amount)
		second[1] -= amount
		heap.Push(hp, first)
		if 0 != second[1] {
			heap.Push(hp, second)
		}
	}
	return ansReturn(ans, n)
}

func insert(ans []byte, n int, sym int, amount int) int {
	char := byte(int('a') + sym)
	for i := n; i < n+amount; i += 1 {
		ans[i] = char
	}
	return n + amount
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func ansReturn(ans []byte, n int) string {
	return string(ans[0:n])
}
