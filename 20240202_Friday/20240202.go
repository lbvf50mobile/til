// Leetcode: 1291. Sequential Digits.
// https://leetcode.com/problems/sequential-digits/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 75.00% of Go online submissions for Sequential
// Digits.
// Memory Usage: 1.9 MB, less than 58.33% of Go online submissions for
// Sequential Digits.
// 2024.02.02 Daily Challenge.

package main

var nums = []int{
	1, 2, 3, 4, 5, 6, 7, 8, 9, 12,
	23, 34, 45, 56, 67, 78, 89, 123,
	234, 345, 456, 567, 678, 789, 1234,
	2345, 3456, 4567, 5678, 6789, 12345,
	23456, 34567, 45678, 56789, 123456, 234567,
	345678, 456789, 1234567, 2345678, 3456789,
	12345678, 23456789, 123456789,
}

func sequentialDigits(low int, high int) []int {
	ans := []int{}
	for _, v := range nums {
		if low <= v && v <= high {
			ans = append(ans, v)
		}
	}
	return ans
}
