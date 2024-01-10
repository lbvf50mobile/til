// Leetcode: 54. Spiral Matrix.
// https://leetcode.com/problems/spiral-matrix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 75.54% of Go online submissions for Spiral
// Matrix.
// Memory Usage: 2 MB, less than 94.11% of Go online submissions for Spiral
// Matrix.
// 2024.01.10.
// https://leetcode.com/discuss/interview-question/4519498/some-simple-but-impt-interview-topics-for-2024
// https://gist.github.com/lbvf50mobile/14a87ee4c57e221f4d260ed3ee1ddb2d

package main

// Directions.
var move = [][]int{
	{0, 1},  // Right.
	{1, 0},  // Down.
	{0, -1}, // Left.
	{-1, 0}, // Top.
}
var m, n int

func spiralOrder(matrix [][]int) []int {
	m, n = len(matrix), len(matrix[0])
	total := m * n
	ans := make([]int, m*n)
	direction := 0
	dx, dy := move[direction][0], move[direction][1]
	nx, ny := 0, 0
	x, y := 0, 0
	v := make([][]bool, m)
	for i := 0; i < m; i += 1 {
		v[i] = make([]bool, n)
	}
	for i := 0; i < total; i += 1 {
		// 1. Save data to the answer.
		ans[i] = matrix[x][y]
		// 1.5. Mark visited.
		v[x][y] = true
		// 2. Calculate new nx, ny.
		nx, ny = x+dx, y+dy
		// 3. Check they are valid.
		// 4. If they are not valid. Change direcition, recalculate.
		if !(inBounds(nx, ny) && (!v[nx][ny])) {
			direction = (direction + 1) % 4
			dx, dy = move[direction][0], move[direction][1]
			nx, ny = x+dx, y+dy
		}
		x, y = nx, ny
	}
	return ans
}

func inBounds(nx, ny int) bool {
	if nx < 0 || ny < 0 {
		return false
	}
	if m <= nx || n <= ny {
		return false
	}
	return true
}
