// Leetcode: 2492. Minimum Score of a Path Between Two Cities.
// https://leetcode.com/problems/minimum-score-of-a-path-between-two-cities/


// Line -1: Char 2: "./precompiled" is relative, but relative import paths are
// not supported in module mode (solution.go)
// Strange error at the Leetcode.

func minScore(n int, roads [][]int) int {
	adj := make([][][]int, n+1)
	for i := 0; i <= n; i += 1 {
		adj[i] = make([][]int, 0)
	}
	for _, x := range roads {
		a, b, w := x[0], x[1], x[2]
		adj[b] = append(adj[b], []int{b, w})
		adj[a] = append(adj[a], []int{a, w})
	}
	return bfs(n, adj)
}
func bfs(n int, adj [][][]int) int {
	ans := 2147483647
	v := make([]bool, n+1)
	q := make([]int, 0)
	q = append(q, a)
	v[1] = true
	for 0 < len(q) {
		x := q[0]
		q = q[1:]
		for _, g := range adj[x] {
			b, w := g[0], g[1]
			if w < ans {
				ans = w
			}
			if !v[b] {
				v[b] = true
				q = append(q, b)
			}
		}
	}
	return ans
}
