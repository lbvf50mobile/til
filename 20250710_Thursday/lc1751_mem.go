// Leetcode: 1751. Maximum Number of Events That Can Be Attended II
// https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"sort"
)

func maxValue(events [][]int, k int) int {

	// It is a Top Down DP, on each step implement two actions get current
	// index on next index in sorted events where start time bigger than
	// current finish, and the max is saved.
	// Address of subproblem is index and amount events to attend in future.

	// event[i] = [start, end, value]

	// Sort by the begining of an event.
	sort.Slice(events, func(i, j int) bool { return events[i][0] < events[j][0] })

	// Now need to create a storage for memoization. The place where answers
	// for subpoblems should be.
	mem := make([][]int, len(events))
	n := len(events)
	for i, _ := range events {
		mem[i] = make([]int, k)
	}
	u := make([][]bool, n)
	for i, _ := range events {
		u[i] = make([]bool, k)
	}

	// Ok now the recursive function itself.
	// Get postion and events to attend.
	// Return available max.
	var rec func(int, int) int
	rec = func(i, rest int) int {
		if i >= n || rest < 0 {
			return 0
		}
		if u[i][rest] {
			return mem[i][rest]
		}
		// Find next index if this one is used.
		next := sort.Search(n, func(j int) bool {
			// j starts right after the i.
			// end bigger than start.
			return events[j][0] > events[i][1]
		})
		// Use this and next, or skip current and step one step forward.
		ans := max(events[i][2]+rec(next, rest-1), rec(i+1, rest))
		u[i][rest] = true
		mem[i][rest] = ans
		return ans

	}
	// Top is use first index, and there will k-1 events to attend.
	return rec(0, k-1)
}
