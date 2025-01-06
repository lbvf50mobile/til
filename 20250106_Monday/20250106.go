// Leetcode: 1769. Minimum Number of Operations to Move All Balls to Each Box
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 7.93 MB Beats 16.22%
// 2025.01.06 Daily Challenge.

package main

import (
// "fmt"
)

func minOperations(boxes string) []int {
	s := boxes
	n := len(boxes)
	l := make([]int, n)
	r := make([]int, n)
	ans := make([]int, n)
	acum := 0
	for i := 1; i < n; i += 1 {
		// Price to move all balls here.
		if '1' == s[i-1] {
			acum += 1 // and and value of prev. cell.
		}
		l[i] = acum + l[i-1]
	}
	acum = 0
	for i := n - 2; 0 <= i; i -= 1 {
		if '1' == s[i+1] {
			acum += 1
		}
		r[i] = acum + r[i+1]
	}
	for i := 0; i < n; i += 1 {
		ans[i] = l[i] + r[i]
	}
	return ans
}
