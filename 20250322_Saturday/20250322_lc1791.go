// 1791. Find Center of Star Graph
// https://leetcode.com/problems/find-center-of-star-graph/description/
// Accepted. Thanks God, Jesus Christ!

package main

func findCenter(edges [][]int) int {
	// Ok I need a center of the graph. That means I need to find a point wit
	// maximum amount of edges.

	// There are m nodes. m-1 edges. n = m-1 is a size of edges slice.
	// n+2 == a size of slice to store all 1 based nodes.
	// n is a amount of edges that could have a center node.
	n := len(edges) // it is number of edges
	// Nodes save number of outcomming edges from a node.
	nodes := make([]int, n+2) // n+2 because it is 1 based.
	for _, v := range edges {
		i, j := v[0], v[1] // Nodes are already one based.
		nodes[i] += 1
		nodes[j] += 1
		// Find center of a graph
		if n == nodes[i] {
			return i
		}
		if n == nodes[j] {
			return j
		}
	}
	panic("cannot solve a problem")
}
