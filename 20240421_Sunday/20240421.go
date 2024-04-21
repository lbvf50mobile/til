// Leetcode: 1971. Find if Path Exists in Graph.
// https://leetcode.com/problems/find-if-path-exists-in-graph/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 299 ms, faster than 55.81% of Go online submissions for Find if
// Path Exists in Graph.
// Memory Usage: 55.9 MB, less than 58.43% of Go online submissions for Find
// if Path Exists in Graph.
// 2024.04.21 Daily Challenge.

package main

type pathStruct struct {
	n    int
	v    []bool
	s, d int
	al   [][]int
}

func validPath(n int, edges [][]int, source int, destination int) bool {
	tsk := pathStructFactory(n, edges, source, destination)
	return tsk.dfs(tsk.s)
}

func pathStructFactory(n int, edges [][]int, source int, destination int) *pathStruct {
	v := make([]bool, n)
	al := make([][]int, n)
	for i, _ := range al {
		al[i] = []int{}
	}
	for _, pair := range edges {
		a, b := pair[0], pair[1]
		al[a] = append(al[a], b)
		al[b] = append(al[b], a)
	}
	return &pathStruct{n, v, source, destination, al}
}

func (ps *pathStruct) dfs(i int) bool {
	ps.v[i] = true
	if i == ps.d {
		return true
	}
	for _, j := range ps.al[i] {
		if ps.v[j] {
			continue
		}
		if ps.dfs(j) {
			return true
		}
	}
	return false
}
