// Leetcode: 1420. Build Array Where You Can Find The Maximum Exactly K Comparisons.
// https://leetcode.com/problems/build-array-where-you-can-find-the-maximum-exactly-k-comparisons/
package main

func numOfArrays(n int, m int, k int) int {
	mod := 1_000_000_007
	dp := make([][][]int,n+1)
	for i := 0; i <= n ; i += 1 {
		dp[i] := make([][]int,m+1)
		for j := 0; j <= m; j += 1 {
			dp[i][j] = make([]int, k+1)
		}
	}
	for j := 0; j <= m; j += 1 {
		dp[n][j][0] = 1
	}
	return dp[0][0][k]
}
