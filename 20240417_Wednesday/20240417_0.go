// Leetcode: 463. Island Perimeter.
// https://leetcode.com/problems/island-perimeter/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 45 ms, faster than 61.37% of Go online submissions for Island
// Perimeter.
// Memory Usage: 8.1 MB, less than 6.51% of Go online submissions for Island
// Perimeter.
// Task for 2024.04.18 Daily Challenge.
// Updated 2024.04.21.

package main

// Aim of this solution is to represent simplest and robust one, also that in
// has a slight touch of system design and using structures. So using standard
// Connected Components DFS, save all land squares to the slice, interate over
// slice with four jumps save all 1/0 1/out jumps in a counter. Return a
// counter.

var jumps = [][]int{
	{1, 0},
	{-1, 0},
	{0, -1},
	{0, 1},
}

type islandTask struct {
	g    [][]int  // gird
	v    [][]bool // visited.
	s    [][2]int // Squares of land.
	ans  int
	m, n int
}

func islandPerimeter(grid [][]int) int {
	tsk := islandTaskFacotry(grid)
	for i := 0; i < tsk.m; i += 1 {
		for j := 0; j < tsk.n; j += 1 {
			if 1 == tsk.g[i][j] && (!tsk.v[i][j]) {
				tsk.dfs(i, j)
			}
		}
	}
	tsk.walk()
	return tsk.ans

}

// Need to create a factory to fill all data redated to the task.
func islandTaskFacotry(grid [][]int) *islandTask {
	// The matrix itself.
	g := grid
	// The Size of the matrix.
	m, n := len(g), len(g[0])
	// Visited cells of the matrix.
	v := make([][]bool, m)
	for i, _ := range v {
		v[i] = make([]bool, n)
	}
	// The counter answer.
	ans := 0
	// and the Squares of the ground
	// For all future posibilites of this task.
	s := make([][2]int, 0, m*n)
	return &islandTask{
		g:   g,
		v:   v,
		s:   s,
		ans: ans,
		m:   m,
		n:   n,
	}
}

// Check that position is in bouds.
func (it *islandTask) inField(i, j int) bool {
	if i < 0 || j < 0 || i >= it.m || j >= it.n {
		return false
	}
	return true
}

// Dfs to walk over an island.
// Fill visited and squares slices.
func (it *islandTask) dfs(i, j int) {
	it.v[i][j] = true
	it.s = append(it.s, [2]int{i, j})
	for _, jump := range jumps {
		ii, jj := i+jump[0], j+jump[1]
		if !it.inField(ii, jj) {
			continue
		}
		if 0 == it.g[ii][jj] || it.v[ii][jj] {
			continue
		}
		it.dfs(ii, jj)
	}
}

// Now need to iterate over all saved sqaures and count perimeter jumps.
func (it *islandTask) walk() {
	for _, sq := range it.s {
		i, j := sq[0], sq[1]
		for _, jmp := range jumps {
			ii, jj := i+jmp[0], j+jmp[1]
			if (!it.inField(ii, jj)) || 0 == it.g[ii][jj] {
				it.ans += 1
			}
		}
	}
}
