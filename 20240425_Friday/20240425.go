// Leetcode: 2370. Longest Ideal Subsequence.
// https://leetcode.com/problems/longest-ideal-subsequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 299 ms, faster than 50.00% of Go online submissions for Longest
// Ideal Subsequence.
// Memory Usage: 61.8 MB, less than 50.00% of Go online submissions for
// Longest Ideal Subsequence.
// 2024.04.26 Updated.
// 2024.04.25 Daily Challenge.

package main

type Lis struct {
	n  int
	k  int
	s  string
	dp [][]int
}

func longestIdealString(s string, k int) int {
	tsk := NewLis(s, k)
	for c := 0; c < 26; c += 1 {
		tsk.dfs(tsk.n-1, c)
	}
	return tsk.findLastRowMax()
}

func NewLis(s string, k int) *Lis {
	n := len(s)
	dp := make([][]int, n)
	for i, _ := range dp {
		dp[i] = make([]int, 26)
		for j, _ := range dp[i] {
			dp[i][j] = -1
		}
	}
	return &Lis{
		n:  n,
		k:  k,
		s:  s,
		dp: dp,
	}
}

func (l *Lis) dfs(i, c int) int {
	if -1 != l.dp[i][c] {
		return l.dp[i][c]
	}
	match := (int(l.s[i]-'a') == c)
	if match {
		l.dp[i][c] = 1
	} else {
		l.dp[i][c] = 0
	}
	if i > 0 {
		l.dp[i][c] = l.dfs(i-1, c)
		if match {
			for p := 0; p < 26; p += 1 {
				if abs(p-c) <= l.k {
					l.dp[i][c] = max(l.dp[i][c], l.dfs(i-1, p)+1) // Here. Forget to add 1.
				}
			}
		}
	}
	return l.dp[i][c]
}
func (l *Lis) findLastRowMax() int {
	ans := -1
	for _, v := range l.dp[l.n-1] {
		ans = max(v, ans)
	}
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}
