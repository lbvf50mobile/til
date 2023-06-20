// Leetcode: 2352. Equal Row and Column Pairs.
// https://leetcode.com/problems/equal-row-and-column-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 218 ms, faster than 22.24% of Go online submissions for Equal Row
// and Column Pairs.
// Memory Usage: 8.7 MB, less than 22.91% of Go online submissions for Equal Row
// and Column Pairs.
// 2023.06.20 Updated.
package main

import (
	"strconv"
)

var r map[string]int // Rows.
var c map[string]int // Columns
var n int
var g [][]int

func equalPairs(grid [][]int) int {
	g = grid
	n = len(g)
	r = make(map[string]int)
	c = make(map[string]int)
	ans := 0
	fillRows()
	fillCols()
	for k, rv := range r {
		if cv, ok := c[k]; ok {
			ans += rv * cv
		}
	}
	return ans
}

func fillRows() {
	for i := 0; i < n; i += 1 {
		key := ""
		for j := 0; j < n; j += 1 {
			key += (strconv.Itoa(g[i][j]) + ",")
		}
		r[key] += 1
	}
}
func fillCols() {
	for j := 0; j < n; j += 1 {
		key := ""
		for i := 0; i < n; i += 1 {
			key += (strconv.Itoa(g[i][j]) + ",")
		}
		c[key] += 1
	}
}
