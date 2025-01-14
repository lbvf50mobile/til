// Leetcode: 2657. Find the Prefix Common Array of Two Arrays
// https://leetcode.com/problems/find-the-prefix-common-array-of-two-arrays/description/?envType=daily-question&envId=2025-01-14
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 7.94 MB Beats 84.81%
// 2025.01.14 Daily Challege.
// https://gist.github.com/lbvf50mobile/a220b101a60ac21c2a99adbbe2fe8dba

package main

import (
// "fmt"
)

func findThePrefixCommonArray(A []int, B []int) []int {
	ans := make([]int, len(A))
	f := make([]int, len(A))
	sum := 0
	for i := 0; i < len(A); i += 1 {
		a, b := A[i], B[i]
		a -= 1
		b -= 1
		f[a] += 1
		f[b] += 1
		if a == b {
			if 2 == f[a] {
				sum += 1
			}
		} else {
			if 2 == f[a] {
				sum += 1
			}
			if 2 == f[b] {
				sum += 1
			}
		}
		ans[i] = sum
	}
	return ans
}
