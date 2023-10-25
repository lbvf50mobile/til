// Leetcode: 779. K-th Symbol in Grammar.
// https://leetcode.com/problems/k-th-symbol-in-grammar
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 82.50% of Go online submissions for K-th Symbol in
// Grammar.
// Memory Usage: 1.9 MB, less than 92.50% of Go online submissions for K-th
// Symbol in Grammar.
// 2023.10.25 Daily Challenge.
package main

func kthGrammar(n int, k int) int {
	// Based on:
	// https://leetcode.com/problems/k-th-symbol-in-grammar/solution/
	return dfs(n, k, 0)
}

func dfs(n, k, v int) int {
	// v is the value of a root.
	if 1 == n {
		return v
	}
	total := 1 << (n - 1)
	// Target node will be present in the right half sub-tree of the current
	// root node.
	if k > total/2 {
		nv := 0
		if 0 == v {
			nv = 1
		}
		return dfs(n-1, k-total/2, nv)
		// Otherwise, the target node is the left sub-tree of the current root
		// node.
	} else {
		nv := 1
		if 0 == v {
			nv = 0
		}
		return dfs(n-1, k, nv)
	}
}
