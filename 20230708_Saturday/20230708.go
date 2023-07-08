// Leetcode: 2551. Put Marbles in Bags.
// https://leetcode.com/problems/put-marbles-in-bags/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 172 ms, faster than 100.00% of Go online submissions for Put Marbles
// in Bags.
// Memory Usage: 9.5 MB, less than 100.00% of Go online submissions for Put
// Marbles in Bags.
// 2023.07.08 Daily Challenge.
package main

import (
	"sort"
)

func putMarbles(weights []int, k int) int64 {
	// Based on:
	// https://leetcode.com/problems/put-marbles-in-bags/solution/
	w, n := weights, len(weights)
	pw := make([]int, n-1)
	for i, _ := range pw {
		pw[i] = w[i] + w[i+1]
	}
	sort.Ints(pw)
	var ans int64 = 0
	for i := 0; i < k-1; i += 1 {
		ans += int64(pw[n-2-i]) - int64(pw[i])
	}
	return ans
}
