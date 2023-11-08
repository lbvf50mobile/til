// Leetcode: 2849. Determine if a Cell Is Reachable at a Given Time.
// https://leetcode.com/problems/determine-if-a-cell-is-reachable-at-a-given-time
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 29.85% of Go online submissions for Determine if a
// Cell Is Reachable at a Given Time.
// Memory Usage: 2.6 MB, less than 100.00% of Go online submissions for
// Determine if a Cell Is Reachable at a Given Time.
// 2023.11.08 Daily Challenge.
package main

func isReachableAtTime(sx int, sy int, fx int, fy int, t int) bool {
	// Based on:
	// https://leetcode.com/problems/determine-if-a-cell-is-reachable-at-a-given-time/solution/
	w := abs(sx - fx)
	h := abs(sy - fy)
	if 0 == w && 0 == h && 1 == t {
		return false
	}
	return t >= w && t >= h

}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
