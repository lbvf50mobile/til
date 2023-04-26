// Leetcode: 258. Add Digits.
// https://leetcode.com/problems/add-digits/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 12.58% of Go online submissions for Add Digits.
// Memory Usage: 2.1 MB, less than 98.11% of Go online submissions for Add
// Digits.
// 2023.04.26 Daily Challenge.

package main

import (
	"strconv"
)

func addDigits(num int) int {
	for num >= 10 {
		num = sumDigits(num)
	}
	return num
}

func sumDigits(x int) int {
	str, sum := strconv.Itoa(x), 0
	for _, x := range str {
		sum += int(x - '0')
	}
	return sum
}
