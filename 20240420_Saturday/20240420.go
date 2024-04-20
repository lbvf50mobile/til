// Leetcode: 1992. Find All Groups of Farmland.
// https://leetcode.com/problems/find-all-groups-of-farmland/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 134 ms, faster than 30.00% of Go online submissions for Find All
// Groups of Farmland.
// Memory Usage: 25.7 MB, less than 20.00% of Go online submissions for Find
// All Groups of Farmland.
// 2024.04.20 Daily Challenge.

package main

var m, n int
var l [][]int
var vd [][]bool // visited
var mvs = [][]int{
	{1, 0},
	{-1, 0},
	{0, 1},
	{0, -1},
}

func findFarmland(land [][]int) [][]int {
	m, n = len(land), len(land[0])
	ans := make([][]int, 0, m*n)
	l = land
	vd = createVisited()
	for i := 0; i < m; i += 1 {
		for j := 0; j < n; j += 1 {
			if 1 == l[i][j] && (!vd[i][j]) {
				coord := []int{i, j, i, j}
				dfs(i, j, coord)
				ans = append(ans, coord)
			}
		}
	}
	return ans
}

func dfs(i, j int, crd []int) {
	vd[i][j] = true
	// Define min max
	if i < crd[0] {
		crd[0] = i
	}
	if i > crd[2] {
		crd[2] = i
	}
	if j < crd[1] {
		crd[1] = j
	}
	if j > crd[3] {
		crd[3] = j
	}
	// Move to the next cell.
	for _, v := range mvs {
		ii, jj := i+v[0], j+v[1]
		if inLand(ii, jj) && (!vd[ii][jj]) && 1 == l[ii][jj] {
			dfs(ii, jj, crd)
		}
	}
}

func createVisited() [][]bool {
	ans := make([][]bool, m)
	for i, _ := range ans {
		ans[i] = make([]bool, n)
	}
	return ans
}

func inLand(i, j int) bool {
	if i < 0 || j < 0 {
		return false
	}
	if i >= m || j >= n {
		return false
	}
	return true
}
