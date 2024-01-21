// Leetcode: 198. House Robber.
// https://leetcode.com/problems/house-robber/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.66% of Go online submissions for House
// Robber.
// Memory Usage: 2.1 MB, less than 68.84% of Go online submissions for House
// Robber.
// 2024.01.21 Daily Challenge.

package main

var nms []int
var dp []int
var m, n int

func rob(nums []int) int {
	// Pull DP + 3 imagenary houses.
	n = len(nums)
	m = n + 3
	nms = nums
	dp = make([]int, m)
	for i := 0; i < m; i += 1 {
		set(i)
	}
	return max3(dp[m-1], dp[m-2], dp[m-3])

}
func max3(a, b, c int) int {
	return max(max(a, b), c)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func getDp(i int) int {
	if i < 0 {
		return 0
	}
	return dp[i]
}
func getNums(i int) int {
	if i > n-1 {
		return 0
	}
	return nms[i]
}

func set(i int) {
	a := getNums(i) + getDp(i-2)
	b := getNums(i) + getDp(i-3)
	ans := a
	if b > ans {
		ans = b
	}
	dp[i] = ans
}
