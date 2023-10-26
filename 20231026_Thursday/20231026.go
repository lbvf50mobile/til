// Leetcode: 823. Binary Trees With Factors.
// https://leetcode.com/problems/binary-trees-with-factors
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 57 ms, faster than 25.00% of Go online submissions for Binary Trees
// With Factors.
// Memory Usage: 3.8 MB, less than 75.00% of Go online submissions for Binary
// Trees With Factors.
// 2023.10.26 Daily Challenge.
package main

import (
	"sort"
)

func numFactoredBinaryTrees(arr []int) int {
	// Based on:
	// https://leetcode.com/problems/binary-trees-with-factors/discuss/4209155/Beats-100-oror-Easiest-Approach-in-3-Points-oror-DP-and-HashMap
	sort.Ints(arr)
	mod := 1000000007
	dp := make(map[int]int)
	for i, _ := range arr {
		dp[arr[i]] = 1
		for j := 0; j < i; j += 1 {
			md := arr[i] % arr[j]
			dv := arr[i] / arr[j]
			val, ok := dp[dv]
			if 0 == md && ok {
				one := dp[arr[i]]
				two := (dp[arr[j]] * val) % mod
				dp[arr[i]] = (one + two) % mod
			}
		}
	}
	ans := 0
	for _, v := range dp {
		ans = (ans + v) % mod
	}
	return ans
}
