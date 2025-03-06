// Leetcode: 2965. Find Missing and Repeated Values
// https://leetcode.com/problems/find-missing-and-repeated-values/description/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Memory: 1 ms Beats 82.81%
// Runtime: 7.07 MB Beats 90.63%

package main

import (
// "fmt"
)

func findMissingAndRepeatedValues(grid [][]int) []int {
	freq := make([]int, 2501) // Just because of the problem limitations.
	ans := []int{0, 9}
	ii, jj := len(grid), len(grid[0])
	last := ii * jj
	for i := 0; i < ii; i += 1 {
		for j := 0; j < jj; j += 1 {
			freq[grid[i][j]] += 1
		}
	}
	for i := 1; i <= last; i += 1 {
		v := freq[i]
		if 0 == v {
			ans[1] = i
		}
		if 2 == v {
			ans[0] = i
		}
	}
	return ans
}
