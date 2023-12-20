// Leetcode: 2706. Buy Two Chocolates.
// https://leetcode.com/problems/buy-two-chocolates/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 76.74% of Go online submissions for Buy Two
// Chocolates.
// Memory Usage: 3.5 MB, less than 72.09% of Go online submissions for Buy Two
// Chocolates.
// 2023.12.20 Daily Challenge.

package main

func buyChoco(prices []int, money int) int {
	var a, b int
	if prices[0] < prices[1] {
		a, b = prices[0], prices[1]
	} else {
		a, b = prices[1], prices[0]
	}
	n := len(prices)
	for i := 2; i < n; i += 1 {
		x := prices[i]
		if a > x { // <= Here.
			b = a
			a = x
		} else if b > x { // <= Here.
			b = x
		}
	}
	if money >= a+b {
		return money - (a + b)
	} else {
		return money
	}
}
