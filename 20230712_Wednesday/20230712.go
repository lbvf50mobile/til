// Leetcode: 802. Find Eventual Safe States.
// https://leetcode.com/problems/find-eventual-safe-states/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 105 ms, faster than 70.00% of Go online submissions for Find
// Eventual Safe States.
// Memory Usage: 7.6 MB, less than 41.43% of Go online submissions for Find
// Eventual Safe States.
// 2023.07.13 Updated.
package main

import (
	"sort"
)

var n int
var g [][]int
var ans []int
var types []int
var v []bool

func eventualSafeNodes(graph [][]int) []int {
	g = graph
	n = len(g)
	ans = make([]int, 0)
	// 0 - no info; 1 - safe; 2 - unsafe;
	types = make([]int, n)
	v = make([]bool, n)
	for i := 0; i < n; i += 1 {
		if !v[i] {
			dfs(i)
		}
	}
	sort.Ints(ans)
	return ans
}

func dfs(i int) bool {
	if v[i] {
		switch types[i] {
		case 0:
			return false
		case 1:
			return true
		case 2:
			return false
		}
	}
	switch types[i] {
	case 1:
		return true
	case 2:
		return false
	}
	v[i] = true
	isSafe := true
	for _, j := range g[i] {
		isSafe = isSafe && dfs(j)
	}
	if isSafe {
		types[i] = 1
		ans = append(ans, i)
	} else {
		types[i] = 2
	}
	return isSafe
}
