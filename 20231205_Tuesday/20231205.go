// Leetcode: 1688. Count of Matches in Tournament.
// https://leetcode.com/problems/count-of-matches-in-tournament/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 16.41% of Go online submissions for Count of
// Matches in Tournament.
// Memory Usage: 2 MB, less than 37.50% of Go online submissions for Count of
// Matches in Tournament.
// 2023.12.05 Daily Challenge.

package main

func numberOfMatches(n int) int {
	ans := 0
	for n > 1 {
		if 0 == n%2 {
			ans += n / 2
			n = n / 2
		} else {
			ans += (n - 1) / 2
			n = (n-1)/2 + 1
		}
	}
	return ans
}
