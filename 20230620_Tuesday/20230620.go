// Leetcode: 2090. K Radius Subarray Averages.
// https://leetcode.com/problems/k-radius-subarray-averages/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 265 ms, faster than 34.18% of Go online submissions for K Radius
// Subarray Averages.
// Memory Usage: 11.5 MB, less than 25.32% of Go online submissions for K Radius
// Subarray Averages.
// 2023.06.20 Daily Challenge.

package main

import ()

func getAverages(nums []int, k int) []int {
	n, m := len(nums), k*2+1
	answer := make([]int, n)
	// Fill answer with -1;
	for i, _ := range answer {
		answer[i] = -1
	}
	// Return if an interval is bigger then the size.
	if n < m {
		return answer
	}
	// Calculage sum of first inteval.
	sum := 0
	for i := 0; i < m; i += 1 {
		sum += nums[i]
	}
	// Save avg in the middle of the first interval.
	answer[k] = (sum / m)
	// If all array size is equal to inteveral.
	if n == m {
		return answer
	}
	// now loop to fill the middles of all possible interval except the first
	// one.
	for i := k + 1; i < n-k; i += 1 {
		sum = sum - nums[i-k-1] + nums[i+k]
		answer[i] = (sum / m)
	}
	// Eventually return the answer.
	return answer
}
