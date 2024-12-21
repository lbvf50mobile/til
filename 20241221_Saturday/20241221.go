// Leetcode: 2872. Maximum Number of K-Divisible Components
// https://leetcode.com/problems/maximum-number-of-k-divisible-components/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 43 ms, faster than 11.11% of Go online submissions for Maximum
// Number of K-Divisible Components.
// Memory Usage: 23.7 MB, less than 22.22% of Go online submissions for
// Maximum Number of K-Divisible Components.
// 2024.12.21 Daily Challenge
package main

import (
// "fmt"
)

func maxKDivisibleComponents(n int, edges [][]int, values []int, k int) int {
	// Translated from the Leetcode's solution:
	// https://leetcode.com/problems/maximum-number-of-k-divisible-components/solution/

	// Step 1: Create adjacency list from edges
	adjList := make([][]int, n)
	for i := 0; i < n; i += 1 {
		adjList[i] = make([]int, 0)
	}
	for _, v := range edges {
		node1, node2 := v[0], v[1]
		adjList[node1] = append(adjList[node1], node2)
		adjList[node2] = append(adjList[node2], node1)
	}
	// Step 2: Initialize componetn count
	cnt := []int{0}
	// Step 3: Start DFS travesral from the node 0
	dfs(0, -1, adjList, values, k, cnt)
	// Step 4: Return the total number of components
	return cnt[0]
}

func dfs(curNode, prntNode int, adjList [][]int, nodeVals []int, k int, cnt []int) int {
	// Step 1: Initialize som for the current subtree
	sum := 0
	// Step 2: Travers all neighbors
	for _, nn := range adjList[curNode] {
		if nn != prntNode {
			// Recursive call to process the subtree  rooted at the neighbor
			sum += dfs(nn, curNode, adjList, nodeVals, k, cnt)
			sum %= k // Ensure the sum stays wihing bounds
		}
	}
	// Step 3: Add teh value of the current node to the sum
	sum += nodeVals[curNode]
	sum %= k
	// Step 4: Checi if the sum is divisible by k
	if 0 == sum {
		cnt[0] += 1
	}
	// Step 5: Return computed sum of the current subree
	return sum
}
