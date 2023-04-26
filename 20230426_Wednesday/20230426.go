// Leetcode: 258. Add Digits.
// https://leetcode.com/problems/add-digits/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
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
