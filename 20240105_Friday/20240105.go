// Leetcode: 300. Longest Increasing Subsequence.
// https://leetcode.com/problems/longest-increasing-subsequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 89.62% of Go online submissions for Longest
// Increasing Subsequence.
// Memory Usage: 3.3 MB, less than 77.96% of Go online submissions for Longest
// Increasing Subsequence.
// 2024.01.05 Daily Challenge.

package main

var dp []int

func lengthOfLIS(nums []int) int {
	// Based on:
	// https://leetcode.com/problems/longest-increasing-subsequence/discuss/667975/Python-3-Lines-dp-with-binary-search-explained
	nn := len(nums)
	n := 0
	dp := make([]int, nn)
	for _, v := range nums {
		i := bSearch(dp, n, v)
		if i == n {
			dp[n] = v
			n += 1
		} else {
			dp[i] = v
		}
	}
	return n 
}

func bSearch(dp []int, n, v int) int {
	if 0 == n {
		return n
	}
	l, r := 0, n-1
	for l <= r {
		m := l + (r-l)/2
		if v == dp[m] {
			return m
		}
		if v < dp[m] {
			r = m - 1
		} else {
			l = m + 1
		}
	}
	return l
}
