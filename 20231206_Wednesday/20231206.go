// Leetcode: 1716. Calculate Money in Leetcode Bank.
// https://leetcode.com/problems/calculate-money-in-leetcode-bank/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 80.85% of Go online submissions for Calculate
// Money in Leetcode Bank.
// Memory Usage: 1.9 MB, less than 31.91% of Go online submissions for
// Calculate Money in Leetcode Bank.
// 2023.12.06 Daily Challenge.

package main

func totalMoney(n int) int {
	day := 0
	week := 0
	ans := 0
	add := 0 // Daily income.
	for i := 0; i < n; i += 1 {
		if 0 == day {
			week += 1
			add = week
		}
		ans += add
		day = (day + 1) % 7
		add += 1
	}
	return ans
}
