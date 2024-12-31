// Leetcode: 2940. Find Building Where Alice and Bob Can Meet
// https://leetcode.com/problems/find-building-where-alice-and-bob-can-meet/editorial/?envType=daily-question&envId=2024-12-22
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// 65 ms Beats 53.13%
// 2024.12.22 Daily Challenge.
// 2024.12.31 implemented.
// Translation of the Leetcode solution from Pyhon to Golang.

package main

import (
// "fmt"
)

type pair [2]int

func leftmostBuildingQueries(heights []int, queries [][]int) []int {
	h, q := heights, queries
	// Monotonic stack.
	ms := make([]pair, 0)
	// Now I going to generate answer, and prefill with -1.
	ans := make([]int, len(q))
	for i := 0; i < len(q); i += 1 {
		ans[i] = -1
	}
	// New queries. Array of pairs.
	nq := make([][]pair, len(h))
	for i, _ := range nq {
		nq[i] = make([]pair, 0)
	}
	// Time to prepare new queries.
	for i, v := range q {
		a := v[0]
		b := v[1]
		if a > b {
			a, b = b, a
		}
		// Find answer if can travel to b,
		// or add a pair to nq[b].
		if h[b] > h[a] || a == b {
			ans[i] = b
		} else {
			nq[b] = append(nq[b], pair{h[a], i})
		}
	}
	// right to left over height, and workign with stack.
	for i := len(h)-1; i >= 0; i -= 1 {
		size := len(ms) // ms is mono stack
		for _, v := range nq[i] {
			a, b := v[0], v[1]
			pos := srch(a, ms)
			if pos < size && pos >= 0 {
				ans[b] = ms[pos][1]
			}
		}
		for len(ms) > 0 && ms[len(ms)-1][0] <= h[i] {
			ms = ms[0 : len(ms)-1]
		}
		ms = append(ms, pair{h[i], i})
	}
	return ans
}

func srch(h int, ms []pair) int {
	l := 0
	r := len(ms) - 1
	ans := -1
	for l <= r {
		m := l + (r-l)/2
		if ms[m][0] > h {
			ans = max(ans, m)
			l = m + 1
		} else {
			r = m - 1
		}
	}

	return ans
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
