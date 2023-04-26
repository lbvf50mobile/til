// Leetcode: 258. Add Digits.
// https://leetcode.com/problems/add-digits/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 53.46% of Go online submissions for Add Digits.
// Memory Usage: 2.1 MB, less than 13.21% of Go online submissions for Add
// Digits.
// 2023.04.26 Daily Challenge.

package main

func addDigits(num int) int {
	if 0 == num {
		return 0
	}
	if 0 == num%9 {
		return 9
	}
	return num % 9
}
