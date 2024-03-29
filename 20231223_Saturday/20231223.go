// Leetcode: 1496. Path Crossing.
// https://leetcode.com/problems/path-crossing/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 50.91% of Go online submissions for Path
// Crossing.
// Memory Usage: 2.3 MB, less than 32.73% of Go online submissions for Path
// Crossing.
// 2023.12.23 Daily Challenge.

package main

var ways = make(map[rune][2]int)

func isPathCrossing(path string) bool {
	ways['S'] = [2]int{0, -1}
	ways['N'] = [2]int{0, 1}
	ways['W'] = [2]int{-1, 0}
	ways['E'] = [2]int{1, 0}
	visited := make(map[[2]int]bool)
	x, y := 0, 0
	visited[[2]int{x, y}] = true
	for _, v := range path {
		delta := ways[v]
		dx, dy := delta[0], delta[1]
		x += dx
		y += dy
		point := [2]int{x, y}
		if visited[point] {
			return true
		}
		visited[point] = true
	}
	return false
}
