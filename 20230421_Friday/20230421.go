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
func find(pos, count, prf int) int {
	if pos == len(gr) {
		if prf >= mp {
			return 1
		} else {
			return 0
		}
	}
	if -1 != dp[pos][count][prf] {
		return dp[pos][count][prf]
	}
	tw := find(pos+1, count, prf) // Total Ways.
	if count+gr[pos] <= nn {
		tw += find(pos+1, count+gr[pos], min(prf+pr[pos], mp))
	}
	ans := tw % mod
	dp[pos][count][prf] = ans
	return ans
}
func dpInit() {
	dp = make([][][]int, 101)
	for i := 0; i < 101; i += 1 {
		dp[i] = make([][]int, 101)
		for j := 0; j < 101; j += 1 {
			dp[i][j] = make([]int, 101)
			for k := 0; k < 101; k += 1 {
				dp[i][j][k] = -1
			}
		}
	}
}
func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
