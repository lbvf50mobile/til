// Leetcode: 746. Min Cost Climbing Stairs.
// https://leetcode.com/problems/min-cost-climbing-stairs
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 59.14% of Go online submissions for Min Cost
// Climbing Stairs.
// Memory Usage: 2.9 MB, less than 79.74% of Go online submissions for Min Cost
// Climbing Stairs.
// 2023.10.13 Daily Challenge.
package main

func minCostClimbingStairs(cost []int) int {
	n := len(cost)
	if 2 == n {
		return min(cost[0], cost[1])
	}
	for i := 2; i < n; i += 1 {
		cost[i] += min(cost[i-1], cost[i-2])
	}
	return min(cost[n-1], cost[n-2])
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
