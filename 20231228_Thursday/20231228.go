// Leetcode: 1531. String Compression II.
// https://leetcode.com/problems/string-compression-ii/
package main

func getLengthOfOptimalCompression(s string, k int) int {
	n := len(s)
	dp := make([][]int, n+1)
	dp[0] = make([]int, k+1)
	val := 1073741824
	for i := 1; i < n+1; i += 1 {
		dp[i] = make([]int, k+1)
		for j := 0; j < k+1; j += 1 {
			dp[i][j] = val
		}
	}
	for i :=1; i < n+1; i +=1 {
		for j := 0; j < k + 1; j += 1 {
		}
	}
	return dp[n][k]
}

func calcLen(l int) int {
	if 0 == l {
		return 0
	} else if 1 == l {
		return 1
	} else if l < 10 {
		return 2
	} else if l < 100 {
		return 3
	} else {
		return 4
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
