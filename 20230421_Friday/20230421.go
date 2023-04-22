// Leetcode: 879. Profitable Schemes.
// https://leetcode.com/problems/profitable-schemes/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 334 ms, faster than 50.00% of Go online submissions for Profitable
// Schemes.
// Memory Usage: 26.7 MB, less than 50.00% of Go online submissions for
// Profitable Schemes.
// 2023.04.21 Daily Challenge.
package main

var (
	mod = 1_000_000_007
	dp  [][][]int
	gr  []int
	pr  []int
	nn  int
	mp  int
)

func profitableSchemes(n int, minProfit int, group []int, profit []int) int {
	// Based on:
	// https://leetcode.com/problems/profitable-schemes/solution/
	nn = n
	gr = group
	pr = profit
	mp = minProfit
	dpInit()
	return find(0, 0, 0)
}
func dpInit() {
	dp = make([][][]int, 101)
	for i := 0; i < 101; i += 1 {
		dp[i] = make([][]int, 101)
		for j := 0; j < 101; j += 1 {
			dp[i][j] = make([]int, 101)
			for k := 0; k < 101; k += 1 {
				dp[i][j][k] = 0
			}
		}
	}
    for cnt := 0; cnt <= nn ; cnt += 1 {
      dp[len(gr)][cnt][mp] = 1
    }
}
func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
