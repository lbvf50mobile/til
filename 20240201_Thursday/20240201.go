// Leetcode: 2966. Divide Array Into Arrays With Max Difference.
// https://leetcode.com/problems/divide-array-into-arrays-with-max-difference/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 215 ms, faster than 10.13% of Go online submissions for Divide
// Array Into Arrays With Max Difference.
// Memory Usage: 12.9 MB, less than 21.52% of Go online submissions for Divide
// Array Into Arrays With Max Difference.
// 2024.02.01 Daily Challenge.

package main

import "sort"

func divideArray(nums []int, k int) [][]int {
	// When sorted each 3 consecutive elements must support the condition.
	n := len(nums)
	if 0 != n%3 {
		return [][]int{}
	}
	nn := n / 3
	ans := make([][]int, nn)
	sort.Ints(nums)
	// (0) -> 1 -> (1) -> 2 -> (2) -> 3 -> (3)
	for i, j := 2, 0; i < n; i, j = i+3, j+1 { // <= Here!
		a, c := nums[i-2], nums[i]
		if k >= c-a {
			ans[j] = nums[i-2 : i+1]
		} else {
			return [][]int{}
		}
	}
	return ans
}
