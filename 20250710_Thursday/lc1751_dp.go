// Leetcode: 1751. Maximum Number of Events That Can Be Attended II
// https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/description/

package main

import (
	"sort"
)

func maxValue(events [][]int, k int) int {
	// This is DP, with push DP solution.
	// Subproblem: current event and rest of events to atted.
	// Solution: Push Dp on the matrix where from current postion push to the
	// next event if atend this competition, and mark next with the same
	// amount_to_eofroms marked.

	// Sort by the begining of an event.
	sort.Slice(events, func(i, j int) bool { return events[i][0] < events[j][0] })

	// Now need to create a storage for memoization. The place where answers
	// for subpoblems should be.
	dp := make([][]int, len(events))
	n := len(events)
	for i, _ := range events {
		dp[i] = make([]int, k)
	}
	// Pushed will be as mark that there is sence to push from this cell.
	pushed := make([][]bool, n)
	for i, _ := range events {
		pushed[i] = make([]bool, k)
		pushed[i][k-1] = true
	}

	var doPush func(int, int, int)
	var doMark func(int, int)

	doPush = func(i int, left int, value int) {
		if i >= n || 0 > left {
			return
		}
		pushed[i][left] = true                // yes we can push from this cell.
		dp[i][left] = max(value, dp[i][left]) // Define maximum push for this cell.
	}
	doMark = func(i int, left int) {
		if i >= n || 0 > left {
			return
		}
		pushed[i][left] = true
	}
	ans := 0
	for i := 0; i < n; i += 1 {
		for j := k - 1; j >= 0; j -= 1 {
			// No need to use this cell nobody point to it.
			if !pushed[i][k-1] {
				continue
			}
			value := dp[i][j] + events[i][2] // This is final value for this sub. prob.
			ans = max(ans, value)
			doMark(i+1, j) // this is jus skip
			next := sort.Search(n, func(ii int) bool { return events[ii][0] > events[i][1] })
			doPush(next, j-1, value)
		}
	}
	return ans

}
