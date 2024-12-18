// Leetcode: 1475. Final Prices With a Special Discount in a Shop
// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Final
// Prices With a Special Discount in a Shop.
// Memory Usage: 4.7 MB, less than 24.24% of Go online submissions for Final
// Prices With a Special Discount in a Shop.
// 2024.12.19 Daily Challenge.

package main

import (
// "fmt"
)

func finalPrices(prices []int) []int {
	pr := prices
	ans := make([]int, len(prices))
	n := len(pr)
	for i := n - 1; i >= 0; i -= 1 {
		cur := pr[i]
		d := 0
		j := 0
		for j = i + 1; j < n && pr[j] > cur; j += 1 {
		}
		if j < n {
			d = pr[j]
		}
		ans[i] = cur - d
	}
	return ans
}
