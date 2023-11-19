// Leetcode: 1887. Reduction Operations to Make the Array Elements Equal.
// https://leetcode.com/problems/reduction-operations-to-make-the-array-elements-equal
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 694 ms, faster than 100.00% of Go online submissions for Reduction
// Operations to Make the Array Elements Equal.
// Memory Usage: 15.1 MB, less than 100.00% of Go online submissions for
// Reduction Operations to Make the Array Elements Equal.
// 2023.11.19 Daily Challenge.
package main

import (
	"sort"
)

func reductionOperations(nums []int) int {
	if 2 > len(nums) {
		return 0
	}
	// 1. Generate a Counter.
	// 2. Find the minimum.
	min := nums[0]
	counter := make(map[int]int)
	for _, v := range nums {
		if v < min {
			min = v
		}
		counter[v] += 1
	}
	// 3. Create slice of pairs without minimum.
	pairs := make([][]int, 0)
	for i, v := range counter {
		if min != i {
			tmp := []int{i, v}
			pairs = append(pairs, tmp)
		}
	}
	// 4. Sort descending.
	sort.SliceStable(pairs, func(i, j int) bool {
		return pairs[i][0] > pairs[j][0]
	})
	// 5. Loop over the slice, compute totalMax and ans variables.
	totalMax, ans := 0, 0
	for _, v := range pairs {
		amount := v[1]
		totalMax += amount
		ans += totalMax
	}
	return ans
}
