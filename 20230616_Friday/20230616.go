// Leetcode: 1569. Number of Ways to Reorder Array to Get Same BST.
// https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/
package main

import (
)

var n int
var mod int = 1000000007
var tb [][]int

func numOfWays(nums []int) int {
	// Based on:
	// https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/solution/
	n = len(nums)
	tb = make([][]int, n)
	for i := 0; i < n; i += 1 {
		tb[i] = make([]int, n)
		tb[i][0], tb[i][i] = 1, 1
	}
	for i := 2; i < n; i += 1 {
		for j := 1; j < i; j += 1 {
			tb[i][j] = (tb[i-1][j-1] + tb[i-1][j]) % mod
		}
	}
	return (dfs(nums) - 1) % mod
}

func dfs(ns []int) int {
	m := len(ns)
	if m < 3 {
		return 1
	}
	ln, rn := make([]int, 0), make([]int, 0)
	for _, x := range ns {
		if x < ns[0] {
			ln = append(ln, x)
		}
		if x > ns[0] {
			rn = append(rn, x)
		}
	}
	return dfs(ln) * dfs(rn) * tb[m-1][len(ln)] % mod
}
