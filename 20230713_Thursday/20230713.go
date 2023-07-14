// Leetcode: 207. Course Schedule.
// https://leetcode.com/problems/course-schedule/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 75.12% of Go online submissions for Course
// Schedule.
// Memory Usage: 6.2 MB, less than 75.62% of Go online submissions for Course
// Schedule.
// 2023.07.14 Updated.
package main

import (
)

var n int
var prs [][]int
var adj [][]int
var v []bool
var is []bool

func canFinish(numCourses int, prerequisites [][]int) bool {
	prs = prerequisites
	n = numCourses 
	adj = make([][]int, n)
	v = make([]bool, n)
	is = make([]bool, n)
	for _, pr := range prs {
		a, b := pr[1], pr[0]
		if nil == adj[a] {
			adj[a] = make([]int, 0)
		}
		adj[a] = append(adj[a], b)
	}
	for i := 0; i < n; i += 1 {
		if dfs(i) {
			return false
		}
	}
	return true
}

func dfs(i int) bool {
	if is[i] {
		return true
	}
	if v[i] {
		return false
	}
	v[i] = true
	is[i] = true
	for _, j := range adj[i] {
		if dfs(j) {
			return true
		}
	}
	is[i] = false
	return false
}
