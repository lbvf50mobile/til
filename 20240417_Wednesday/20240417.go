// Leetcode: 463. Island Perimeter.
// https://leetcode.com/problems/island-perimeter/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 44 ms, faster than 67.17% of Go online submissions for Island
// Perimeter.
// Memory Usage: 7.6 MB, less than 20.24% of Go online submissions for Island
// Perimeter.
// Task for 2024.04.18 Daily Challenge.
// Updated 2024.04.21.

package main

// Aim of this solution is to make a little bit more optimized DFS than the
// previous one. Here during the DFS if over the jump is land just jump, if
// water or out of the boundaries increase the answer counter. Also use a task
// counter.

var jmps = [][]int{
	{1, 0},
	{-1, 0},
	{0, 1},
	{0, -1},
}

type landS struct {
	m, n    int
	g       [][]int
	v       [][]bool
	counter int
}

func islandPerimeter(grid [][]int) int {
	tsk := landFactory(grid)
	for i := 0; i < tsk.m; i += 1 {
		for j := 0; j < tsk.n; j += 1 {
			if (!tsk.v[i][j]) && 1 == tsk.g[i][j] {
				tsk.dfs(i, j)
			}
		}
	}
	return tsk.counter
}

func landFactory(grid [][]int) *landS {
	g := grid
	m, n := len(g), len(g[0])
	counter := 0
	v := make([][]bool, m)
	for i, _ := range v {
		v[i] = make([]bool, n)
	}
	return &landS{
		m:       m,
		n:       n,
		g:       g,
		v:       v,
		counter: counter,
	}
}

func (ls *landS) inL(i, j int) bool {
	if i < 0 || j < 0 || i >= ls.m || j >= ls.n {
		return false
	}
	return true
}

// Update visited, increase counter, move next by a land.
func (ls *landS) dfs(i, j int) {
	ls.v[i][j] = true
	for _, jmp := range jmps {
		ii, jj := i+jmp[0], j+jmp[1]
		if !ls.inL(ii, jj) {
			ls.counter += 1
			continue
		}
		if 0 == ls.g[ii][jj] {
			ls.counter += 1
			continue
		}
		if ls.v[ii][jj] {
			continue
		}
		if 1 == ls.g[ii][jj] && (!ls.v[ii][jj]) {
			ls.dfs(ii, jj)
		}
	}
}
