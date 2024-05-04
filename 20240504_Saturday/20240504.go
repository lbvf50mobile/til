// Leetcode: 881. Boats to Save People.
// https://leetcode.com/problems/boats-to-save-people/
// = = = = = = = = = = = = = =
// Accepted.
// Thank God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 54 ms, faster than 80.23% of Go online submissions for Boats to
// Save People.
// Memory Usage: 7.1 MB, less than 63.95% of Go online submissions for Boats
// to Save People.
// 2024.05.04 Daily Challenge.

package main

import (
	"sort"
)

// Need to read a description more carrefully!
// Each boat carries at most two people at the same time.
// Each boat carries at most two people at the same time
// Each boat carries at most two people at the same time
// 1. Sort.
// 2. Save a pair (big+small) or only big.

func numRescueBoats(people []int, limit int) int {
	ppl := people
	sort.Ints(ppl)
	small, big := 0, len(ppl)-1
	ans := 0
	for small <= big {
		if limit >= (ppl[small] + ppl[big]) {
			big -= 1
			small += 1

		} else {
			big -= 1
		}
		ans += 1
	}
	return ans
}
