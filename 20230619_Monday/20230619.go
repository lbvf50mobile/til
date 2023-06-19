// Leetcode: 1732. Find the Highest Altitude.
// https://leetcode.com/problems/find-the-highest-altitude/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 65.58% of Go online submissions for Find the
// Highest Altitude.
// Memory Usage: 2.2 MB, less than 97.21% of Go online submissions for Find the
// Highest Altitude.
// 2023.06.19 Daily Challenge.
package main

import ()

func largestAltitude(gain []int) int {
	curr := 0
	max := 0
	for _, x := range gain {
		curr += x
		if curr > max {
			max = curr
		}
	}
	return max
}
