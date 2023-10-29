// Leetcode: 458. Poor Pigs.
// https://leetcode.com/problems/poor-pigs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 66.67% of Go online submissions for Poor Pigs.
// Memory Usage: 1.9 MB, less than 33.33% of Go online submissions for Poor
// Pigs.
// 2023.10.29 Daily Challenge.
package main

func poorPigs(buckets int, minutesToDie int, minutesToTest int) int {
	// Based on:
	// https://leetcode.com/problems/poor-pigs/discuss/94266/Another-explanation-and-solution
	ans := 0
	for pow(minutesToTest/minutesToDie+1, ans) < buckets {
		ans += 1
	}
	return ans
}

func pow(a, b int) int {
	ans := 1
	for i := 0; i < b; i += 1 {
		ans *= a
	}
	return ans
}
