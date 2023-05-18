// Leetcode: 1557. Minimum Number of Vertices to Reach All Nodes.
// https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 208 ms, faster than 27.62% of Go online submissions for Minimum
// Number of Vertices to Reach All Nodes.
// Memory Usage: 17.8 MB, less than 51.43% of Go online submissions for Minimum
// Number of Vertices to Reach All Nodes.
// 2023.05.18 Daily Challenge.
package main

func findSmallestSetOfVertices(n int, edges [][]int) []int {
	out := make([]bool, n)
	for _, edge := range edges {
		_, b := edge[0], edge[1]
		out[b] = true
	}
	ans := []int{}
	for i := 0; i < n; i += 1 {
		if !out[i] {
			ans = append(ans, i)
		}
	}
	return ans
}
