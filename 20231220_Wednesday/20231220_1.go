// Leetcode: 2706. Buy Two Chocolates.
// https://leetcode.com/problems/buy-two-chocolates/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 38.10% of Go online submissions for Buy Two
// Chocolates.
// Memory Usage: 3.5 MB, less than 71.43% of Go online submissions for Buy Two
// Chocolates.
// 2023.12.20 Daily Challenge.

package main

import (
	"sort"
)

func buyChoco(prices []int, money int) int {
	sort.Ints(prices)
	a, b := prices[0], prices[1]
	if money >= a+b {
		return money - (a + b)
	} else {
		return money
	}
}
