// Leetcode: 200. Number of Islands.
// https://leetcode.com/problems/number-of-islands/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 79.81% of Go online submissions for Number of
// Islands.
// Memory Usage: 4 MB, less than 40.58% of Go online submissions for Number of
// Islands.
// 2024.01.17.
// https://gist.github.com/lbvf50mobile/b5a24a9eb7f303d2c862fdc3ce2ffbf2

package main

var m, n int
var v [][]bool
var g [][]byte

func numIslands(grid [][]byte) int {
	g = grid
	m = len(grid)
	n = len(grid[0])
	v = make([][]bool, m)
	for i := 0; i < m; i += 1 {
		v[i] = make([]bool, n)
	}
	ans := 0
	for i := 0; i < m; i += 1 {
		for j := 0; j < n; j += 1 {
			if !v[i][j] && '1' == g[i][j] {
				ans += 1
				dfs(i, j)
			}
		}
	}
	return ans
}

func dfs(i, j int) {
	if i < 0 || i >= m {
		return
	}
	if j < 0 || j >= n {
		return
	}
	if v[i][j] {
		return
	}
	if '0' == g[i][j] {
		return
	}
	v[i][j] = true
	dfs(i+1, j)
	dfs(i-1, j)
	dfs(i, j+1)
	dfs(i, j-1)
}
