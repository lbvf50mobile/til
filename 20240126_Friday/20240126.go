// Leetcocde: 576. Out of Boundary Paths.
// https://leetcode.com/problems/out-of-boundary-paths/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 41.67% of Go online submissions for Out of
// Boundary Paths.
// Memory Usage: 5.4 MB, less than 25.00% of Go online submissions for Out of
// Boundary Paths.
// 2024.01.26 Daily Challenge.


package main

var ans int // Total number of fails from the plates.
var moves = [][]int{
	{-1, 0},
	{0, 1},
	{1, 0},
	{0, -1}}
var mm, nn int
var dp [][][]int
var mod = 1000_000_007

func findPaths(m int, n int, maxMove int, startRow int, startColumn int) int {
	ans = 0
	mm, nn = m, n
	// Stack of fields one about onther. Starting from the top one.
	// And go down on each step. I going to use one more field just to make
	// code more readable with less circumstances.
	dp = make([][][]int, maxMove+1)
	for i := 0; i < maxMove+1; i += 1 {
		dp[i] = make([][]int, mm)
		for j := 0; j < mm; j += 1 {
			dp[i][j] = make([]int, nn)
		}
	}
	dp[0][startRow][startColumn] = 1
	for mv := 0; mv < maxMove; mv += 1 {
		for i := 0; i < m; i += 1 {
			for j := 0; j < n; j += 1 {
				val := (dp[mv][i][j] % mod)
				for _, v := range moves {
					x, y := i+v[0], j+v[1]
					tmp := 0
					if inField(x, y) {
						tmp = dp[mv+1][x][y] % mod
						dp[mv+1][x][y] = (tmp + val) % mod
					} else {
						tmp = ans % mod
						ans = (tmp + val) % mod
					}
				}
			}
		}
	}
	return ans
}
func inField(i, j int) bool {
	if i < 0 || j < 0 {
		return false
	}
	if i >= mm || j >= nn {
		return false
	}
	return true
}
