// Leetcode: 1061. Lexicographically Smallest Equivalent String
// https://leetcode.com/problems/lexicographically-smallest-equivalent-string/description/?envType=daily-question&envId=2025-06-05
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 4.59 MB Beats 30.37%

package main

func smallestEquivalentString(s1 string, s2 string, baseStr string) string {
	// Plan.
	// String => []int,
	var a, b, c *[]int
	a = new([]int)
	b = new([]int)
	c = new([]int)
	str2int(s1, a)
	str2int(s2, b)
	str2int(baseStr, c)
	// Adjacency list.
	var adj *[][]bool
	adj = crtAdj(a, b)
	// Conected components BFS.
	used := make([]bool, 26)
	minV := make([]int, 26)
	// Fill all nodes with minimum value.
	conComp(adj, used, minV)
	// Map Base str.
	ans := make([]byte, len(baseStr))
	for i, v := range *c {
		ans[i] = byte(minV[v]) + 'a'
	}
	return string(ans)
}

func str2int(s string, pnt *[]int) {
	ans := make([]int, len(s))
	for i, v := range s {
		ans[i] = int(v) - int('a')
	}
	*pnt = ans
}
func crtAdj(a *[]int, b *[]int) *[][]bool {
	a1, b1 := *a, *b
	adj := make([][]bool, 26)
	for i := 0; i < 26; i += 1 {
		adj[i] = make([]bool, 26)
	}
	for i, v := range a1 {
		v2 := b1[i]
		adj[v][v2] = true
		adj[v2][v] = true
	}
	return &adj
}
func conComp(adj *[][]bool, used []bool, minV []int) {
	lst := *adj
	// Iterate over all alphabet.
	for i := 0; i < 26; i += 1 {
		if used[i] {
			continue
		}
		// Start for current char.
		nodes := make([]int, 1, 26)
		head := 0
		min := i
		q := make([]int, 1, 26)
		q[0] = i
		nodes[0] = i
		for head < len(q) {
			x := q[head]
			head += 1
			for j, v := range lst[x] {
				if (!used[j]) && v {
					q = append(q, j)
					nodes = append(nodes, j)
					used[j] = true
					if min > j {
						min = j
					}
				}
			}
		}
		// Set minimals.
		for _, v := range nodes {
			minV[v] = min
		}
	}
}
