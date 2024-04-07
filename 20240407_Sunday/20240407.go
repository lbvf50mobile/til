// Leetcode: 678. Valid Parenthesis String.
// https://leetcode.com/problems/valid-parenthesis-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 18.29% of Go online submissions for Valid
// Parenthesis String.
// Memory Usage: 2.8 MB, less than 19.51% of Go online submissions for Valid
// Parenthesis String.
// 2024.04.07 Daily Challenge.

package main

type state struct {
	i int
	c int // counter
}

var m map[state]bool

func checkValidString(s string) bool {
	m = make(map[state]bool)
	return dfs(s, 0, 0)
}

func dfs(s string, i, c int) bool {
	if c < 0 {
		return false
	}
	if len(s) == i && c != 0 {
		return false
	}
	if len(s) == i && c == 0 {
		return true
	}
	if '(' == s[i] {
		return dfs(s, i+1, c+1)
	}
	if ')' == s[i] {
		return dfs(s, i+1, c-1)
	}
	x := state{i, c}
	if v, ok := m[x]; ok {
		return v
	} else {
		ans := dfs(s, i+1, c) || dfs(s, i+1, c+1) || dfs(s, i+1, c-1)
		m[x] = ans
		return ans
	}
}
