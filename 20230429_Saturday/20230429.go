// Leetcode: 1697. Checking Existence of Edge Length Limited Paths.
// https://leetcode.com/problems/checking-existence-of-edge-length-limited-paths/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 336 ms, faster than 66.67% of Go online submissions for Checking
// Existence of Edge Length Limited Paths.
// Memory Usage: 17.6 MB, less than 33.33% of Go online submissions for Checking
// Existence of Edge Length Limited Paths.
package main

// import "sort"
// Line 5: Char 8: sort redeclared in this block (solution.go)
// Line -2: Char 2: other declaration of sort (solution.go)
// Line 5: Char 8: imported and not used: "sort" (solution.go)

type unfn struct {
	g []int
	r []int
}

func (t *unfn) find(n int) int {
	if n != t.g[n] {
		t.g[n] = t.find(t.g[n])
	}
	return t.g[n]
}

func (t *unfn) join(n1, n2 int) {
	g1, g2 := t.find(n1), t.find(n2)
	if g1 == g2 {
		return
	}
	if t.r[g1] > t.r[g2] {
		t.g[g2] = g1
	} else if t.r[g1] < t.r[g2] {
		t.g[g1] = g2
	} else {
		t.g[g1] = g2
		t.r[g2] += 1
	}
}

func (t *unfn) con(n1, n2 int) bool {
	g1, g2 := t.find(n1), t.find(n2)
	return g1 == g2
}

func newUn(n int) *unfn {
	x := unfn{}
	x.g = make([]int, n)
	x.r = make([]int, n)
	for i := 0; i < n; i += 1 {
		x.g[i] = i
	}
	return &x
}

func distanceLimitedPathsExist(n int, edgeList [][]int, queries [][]int) []bool {

	// Based on the Leetcode's solution.

	uf := newUn(n)
	qc := len(queries)
	ans := make([]bool, qc)

	// Store original incides with all quieres.
	qwi := make([][]int, qc)
	for i, _ := range qwi {
		qwi[i] = make([]int, len(queries[i])+1)
		for j, v1 := range queries[i] {
			qwi[i][j] = v1
		}
		qwi[i][len(queries[i])] = i
	}
	// Sort all edges in increasing order of their edge weights.
	sort.Slice(edgeList, func(i, j int) bool {
		a, b := edgeList[i], edgeList[j]
		return a[2] < b[2]
	})
	// Sort all queries in increasing orderof the limit of edge allowed.
	sort.Slice(qwi, func(i, j int) bool {
		a, b := qwi[i], qwi[j]
		return a[2] < b[2]
	})
	// ei - edges index.
	ei := 0
	e := edgeList
	el := len(edgeList)

	// qoi - Query original index.
	// l - limit.
	// Iterate on each query one by one.
	for _, v := range qwi {
		pe, q, l, qoi := v[0], v[1], v[2], v[3]
		for ei < el && e[ei][2] < l {
			n1 := e[ei][0]
			n2 := e[ei][1]
			uf.join(n1, n2)
			ei += 1
		}
		// If both nodes belong to the same component, it means we can reach
		// them.
		ans[qoi] = uf.con(pe, q)
	}

	return ans
}
