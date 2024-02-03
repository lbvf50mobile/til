// Leetcode: 1043. Partition Array for Maximum Sum.
// https://leetcode.com/problems/partition-array-for-maximum-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 72.41% of Go online submissions for Partition
// Array for Maximum Sum.
// Memory Usage: 2.7 MB, less than 48.28% of Go online submissions for
// Partition Array for Maximum Sum.
// 2024.02.03 Daily Challenge.

package main

func maxSumAfterPartitioning(arr []int, k int) int {
	// Based on:
	// https://leetcode.com/problems/partition-array-for-maximum-sum/solution/
	n := len(arr)
	kk := k + 1
	dp := make([]int, kk)
	for st := n - 1; st >= 0; st -= 1 {
		cMax := 0
		end := min(n, st+k)
		for i := st; i < end; i += 1 {
			cMax = max(cMax, arr[i])
			a := dp[st%kk]
			b := dp[(i+1)%kk] + cMax*(i-st+1)
			dp[st%kk] = max(a, b)
		}
	}
	return dp[0]
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
