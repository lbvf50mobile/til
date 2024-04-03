// Leetcode: 79. Word Search.
// https://leetcode.com/problems/word-search/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 182 ms, faster than 35.95% of Go online submissions for Word
// Search.
// Memory Usage: 2.3 MB, less than 46.33% of Go online submissions for Word
// Search.
// 2024.04.03 Daily Challenge.

package main

var m, n int
var u [][]bool
var w []byte
var b [][]byte

func exist(board [][]byte, word string) bool {
	m = len(board)
	n = len(board[0])
	w = []byte(word)
	u = make([][]bool, m)
	b = board
	for i := 0; i < m; i += 1 {
		u[i] = make([]bool, n)
	}
	for i := 0; i < m; i += 1 {
		for j := 0; j < n; j += 1 {
			if tr(i, j, 0) {
				return true
			}
		}
	}
	return false
}

func tr(i, j, iW int) bool {
	// Out of rows.
	if i < 0 || i >= m {
		return false
	}
	// Out of collumns.
	if j < 0 || j >= n {
		return false
	}
	// Already used.
	if u[i][j] {
		return false
	}
	// Last symbol of the word.
	if len(w)-1 == iW {
		// Find a work.
		if b[i][j] == w[iW] {
			return true
		} else {
			// Did not find it.
			return false
		}
	}
	// Do nothing incorrect symbol.
	if b[i][j] != w[iW] {
		return false
	}
	// Ok time for the correct symbol.
	// Mark used.
	u[i][j] = true
	// Unmark when return.
	defer unuse(i, j)
	// Create new positions.
	pos := [][]int{[]int{i + 1, j}, []int{i - 1, j}, []int{i, j + 1}, []int{i, j - 1}}
	// Iterate over possition. Find a word.
	for _, v := range pos {
		ii, jj := v[0], v[1]
		if tr(ii, jj, iW+1) {
			return true
		}
	}
	return false
}
func unuse(i, j int) {
	u[i][j] = false
}
