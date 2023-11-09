// Leetcode: 1759. Count Number of Homogenous Substrings.
// https://leetcode.com/problems/count-number-of-homogenous-substrings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 62.96% of Go online submissions for Count Number
// of Homogenous Substrings.
// Memory Usage: 6.2 MB, less than 85.19% of Go online submissions for Count
// Number of Homogenous Substrings.
// 2023.11.09 Daily Challenge.
package main

func countHomogenous(s string) int {
	ans, stk, mod := 0, 0, 1000_000_007
	for i, _ := range s {
		if 0 == i || s[i] == s[i-1] {
			stk += 1
		} else {
			stk = 1
		}
		ans = (ans + stk) % mod
	}
	return ans
}
