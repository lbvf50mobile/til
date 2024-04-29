// Leetcode: 834. Sum of Distances in Tree.
// https://leetcode.com/problems/sum-of-distances-in-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 286 ms, faster than 14.29% of Go online submissions for Sum of
// Distances in Tree.
// Memory Usage: 25 MB, less than 7.14% of Go online submissions for Sum of
// Distances in Tree.
// 2024.04.29 Updated.
// 2024.04.28 Daily Challenge.

package main

// 1. For Root sum of depth is the answer.
// 2. For a node a parent answer - nodeWeight + restOfTreeWeight.
// Node's weight is number of nodes in the subtree.
// A. Create Adjacency List.
// B. Run first DFS fill weights and calculate depth's sum.
// C. Rust second DFS to calculate an answer.

// Use map for set.
type ajList map[int]map[int]bool

type dit struct {
	n    int
	aj   ajList
	w    []int
	dSum int
	ans  []int
}

func sumOfDistancesInTree(n int, edges [][]int) []int {
	tsk := newDit(n, edges)
	tsk.dfs(0, -1, 0)
	tsk.dfs2(tsk.dSum, 0, -1)
	return tsk.ans
}

func (dt *dit) dfs(i, pi, depth int) int {
	dt.dSum += depth
	ans := 1
	for k, _ := range dt.aj[i] {
		if k == pi {
			continue
		}
		ans += dt.dfs(k, i, depth+1)
	}
	dt.w[i] = ans
	return ans
}
func (dt *dit) dfs2(ans, i, pi int) {
	dt.ans[i] = ans
	for k, _ := range dt.aj[i] {
		if k == pi {
			continue
		}
		dt.dfs2(ans+dt.n-2*dt.w[k], k, i)
	}
}

func newDit(n int, edges [][]int) *dit {
	aj := make(ajList)
	for _, v := range edges {
		a, b := v[0], v[1]
		aMap, aOk := aj[a]
		bMap, bOk := aj[b]
		if aOk {
			aMap[b] = true
		} else {
			aj[a] = make(map[int]bool)
			aj[a][b] = true
		}
		if bOk {
			bMap[a] = true
		} else {
			aj[b] = make(map[int]bool)
			aj[b][a] = true
		}
	}
	return &dit{
		n:    n,
		aj:   aj,
		w:    make([]int, n),
		dSum: 0,
		ans:  make([]int, n),
	}
}
