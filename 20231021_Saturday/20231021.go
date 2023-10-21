// Leetcode: 1425. Constrained Subsequence Sum.
// https://leetcode.com/problems/constrained-subsequence-sum/
// = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = =
// Runtime: 193 ms, faster than 83.33% of Go online submissions for Constrained
// Subsequence Sum.
// Memory Usage: 10 MB, less than 75.00% of Go online submissions for
// Constrained Subsequence Sum.
// 2023.10.21 Daily Challenge.
package main

import "fmt"

var p = fmt.Println

func constrainedSubsetSum(nums []int, k int) int {
	// Based on:
	// https://leetcode.com/problems/constrained-subsequence-sum/solution/
	q := make([]int, 0)
	dp := make([]int, len(nums))
	for i, _ := range nums {
		if 0 < len(q) && (i-q[0]) > k {
			q = q[1:]
		}
		tmp := 0
		if 0 < len(q) {
			tmp = dp[q[0]]
		}
		dp[i] = tmp + nums[i]
		// Fails if instead of len(q)-1 a variable is used.
		for 0 < len(q) && dp[q[len(q)-1]] < dp[i] {
			q = q[0 : len(q)-1]
		}
		if dp[i] > 0 {
			q = append(q, i)
		}
	}
	return max(dp)
}

func max(x []int) int {
	ans := x[0]
	for _, v := range x {
		if ans < v {
			ans = v
		}
	}
	return ans
}
