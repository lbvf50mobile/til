// Leetcode: 839. Similar String Groups.
// https://leetcode.com/problems/similar-string-groups/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 81.25% of Go online submissions for Similar
// String Groups. Memory Usage: 4.6 MB, less than 37.50% of Go online
// submissions for Similar String Groups.
// 2023.04.28 Daily Challenge.
package main

var al [][]int
var v []bool


func numSimilarGroups(strs []string) int {
	n := len(strs)
	al = make([][]int, n)
	v = make([]bool, n)
	ans := 0
	for i := 0; i < n; i += 1 {
		al[i] = make([]int, 0)
	}
	for i := 0; i < n; i += 1 {
		for j := 0; j < n; j += 1 {
			if sim(strs[j], strs[i]) {
				al[i] = append(al[i], j)
				al[j] = append(al[j], i)
			}
		}
	}
	for i := 0; i < n; i += 1 {
		if false == v[i] {
			dfs(i)
			ans += 1
		}
	}
	return ans
}

func dfs(i int) {
	v[i] = true
	for _, j := range al[i] {
		if false == v[j] {
			dfs(j)
		}
	}
}

func sim(a, b string) bool {
	err := 0
	for i, _ := range a {
		if a[i] != b[i] {
			err += 1
			if err > 2 {
				return false
			}
		}
	}
	return 2 == err || 0 == err
}
