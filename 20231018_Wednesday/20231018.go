// Leetcode: 2050. Parallel Courses III.
// https://leetcode.com/problems/parallel-courses-iii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 359 ms, faster than 50.00% of Go online submissions for Parallel
// Courses III.
// Memory Usage: 22.6 MB, less than 50.00% of Go online submissions for Parallel
// Courses III.
// 2023.10.18 Daily Challenge.
package main

var g map[int][]int
var dp map[int]int
var t []int

func minimumTime(n int, relations [][]int, time []int) int {
	// Based on:
	// https://leetcode.com/problems/parallel-courses-iii/solution/
	g = make(map[int][]int)
	dp = make(map[int]int)
	t = time
	for i := 0; i < n; i += 1 {
		g[i] = make([]int, 0)
	}
	for _, e := range relations {
		x, y := e[0]-1, e[1]-1
		g[x] = append(g[x], y)
	}
	ans := 0
	for nd := 0; nd < n; nd += 1 {
		tmp := dfs(nd)
		if ans < tmp {
			ans = tmp
		}
	}
	return ans
}

func dfs(n int) int {
	if _, ok := dp[n]; ok {
		return dp[n]
	}
	if _, ok := g[n]; !ok {
		return t[n]
	}
	if 0 == len(g[n]) {
		return t[n]
	}
	ans := 0
	for _, nb := range g[n] {
		tmp := dfs(nb)
		if tmp > ans {
			ans = tmp
		}
	}
	ans += t[n]
	dp[n] = ans
	return ans
}
