// Leetcode: 2812. Find the Safest Path in a Grid.
// https://leetcode.com/problems/find-the-safest-path-in-a-grid/

package main

var dt = [][]int{
	[]int{0, 1},
	[]int{0, -1},
	[]int{1, 0},
	[]int{-1, 0},
}

var n int
var g [][]int

func maximumSafenessFactor(grid [][]int) int {
	g = grid
	n = len(grid)
	msq = make([][]int, 0)
	for i := 0; i < n; i += 1 {
		for j := 0; j < n; j += 1 {
			if 1 == g[i][j] {
				msq = append(msq, []int{i, j})
				grid[i][j] = 0
			} else {
				g[i][j] = -1
			}
		}
	}

}
