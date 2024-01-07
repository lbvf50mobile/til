// Leetcode: 446. Arithmetic Slices II - Subsequence.
// https://leetcode.com/problems/arithmetic-slices-ii-subsequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 191 ms, faster than 50.00% of Go online submissions for Arithmetic
// Slices II - Subsequence.
// Memory Usage: 34.9 MB, less than 50.00% of Go online submissions for
// Arithmetic Slices II - Subsequence.
// 2024.01.07 Daily Challenge.

package main

var dp []map[int]int

func numberOfArithmeticSlices(nums []int) int {
	// Based on:
	// https://leetcode.com/problems/arithmetic-slices-ii-subsequence/discuss/1455137/Python-short-dp-explained
	total, n := 0, len(nums)
	dp = make([]map[int]int, n)
	for i := 0; i < n; i += 1 {
		dp[i] = make(map[int]int)
	}
	for i := 0; i < n; i += 1 {
		for j := 0; j < i; j += 1 {
			diff := nums[i] - nums[j]
			dp[i][diff] += dp[j][diff] + 1
		}
		total += sum(dp[i])
	}
	return total - ((n-1)*n/2) // <= Here.
}

func sum(x map[int]int) int {
	ans := 0
	for _, v := range x {
		ans += v
	}
	return ans
}
