// Leetcode: 547. Number of Provinces.
// https://leetcode.com/problems/number-of-provinces/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 26 ms, faster than 36.21% of Go online submissions for Number of
// Provinces.
// Memory Usage: 6.8 MB, less than 65.43% of Go online submissions for Number of
// Provinces.
// 2023.06.05 Updated.
package main

import (
	"fmt"
)

var g [][]int // Graph.
var v []bool  // Visited.

func findCircleNum(isConnected [][]int) int {
	g = isConnected
	v = make([]bool, len(g))
	ans := 0 // Number of components.
	for i := 0; i < len(g); i += 1 {
		if true == v[i] {
			continue
		}
		bfs(i)
		ans += 1
	}
	return ans
}

func bfs(i int) {
	v[i] = true
	q := make([]int, 1)
	q[0] = i
	for 0 != len(q) {
		x := q[0]
		q = q[1:]
		for j, _ := range g {
			if v[j] || 0 == g[x][j] {
				continue
			}
			q = append(q, j)
			v[j] = true
		}
	}
}
