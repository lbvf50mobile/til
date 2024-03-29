// Leetcode: 1637. Widest Vertical Area Between Two Points Containing No Points.
// https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 114 ms, faster than 100.00% of Go online submissions for Widest
// Vertical Area Between Two Points Containing No Points.
// Memory Usage: 17.4 MB, less than 52.00% of Go online submissions for Widest
// Vertical Area Between Two Points Containing No Points.
// 2023.12.21 Daily Challenge.

package main

import (
	"sort"
)

func maxWidthOfVerticalArea(points [][]int) int {
	// 1. Map pair to x coordinate.
	n := len(points)
	onlyX := make([]int, n)
	for i, v := range points {
		onlyX[i] = v[0]
	}
	// 2. Sort.
	sort.Ints(onlyX)
	// 3. Inplace Uniq.
	write := 1
	for read := 1; read < n; read += 1 {
		// A new is not equal to the prvious.
		// onlyX[0] != onlyX[1]
		if onlyX[read] != onlyX[write-1] {
			onlyX[write] = onlyX[read]
			write += 1
		}
	}
	n = write
	onlyX = onlyX[:n] // Now onlyX has only uniq values.

	// 4. Loop to find the max gap.
	ans := 0
	for i := 1; i < n; i += 1 {
		gap := onlyX[i] - onlyX[i-1]
		if ans < gap {
			ans = gap
		}
	}
	// 5. Return the answer.
	return ans
}
