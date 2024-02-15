// Leetcode: 2971. Find Polygon With the Largest Perimeter.
// https://leetcode.com/problems/find-polygon-with-the-largest-perimeter/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 162 ms, faster than 21.43% of Go online submissions for Find
// Polygon With the Largest Perimeter.
// Memory Usage: 9.3 MB, less than 65.48% of Go online submissions for Find
// Polygon With the Largest Perimeter.
// 2024.02.15 Daily Challenge.

package main

import (
	"sort"
)

func largestPerimeter(nums []int) int64 {
	// Hint fromt the Leetcode's solution.
	var sum, ans int64
	ans = -1
	sum = 0
	sort.Ints(nums)
	for _, v := range nums {
		if int64(v) < sum {
			ans = int64(v) + sum
		}
		sum += int64(v)
	}
	return ans
}
