// Leetcode: 1614. Maximum Nesting Depth of the Parentheses.
// https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 69.57% of Go online submissions for Maximum
// Nesting Depth of the Parentheses.
// Memory Usage: 2.1 MB, less than 28.26% of Go online submissions for Maximum
// Nesting Depth of the Parentheses.
// 2024.04.04 Daily Challenge.

package main

type Stack []int

func (s *Stack) push(x int) {
	tmp := *s
	*s = append(tmp, x)
}
func (s *Stack) pop() int {
	tmp := *s
	n := len(tmp)
	ans := tmp[n-1]
	*s = tmp[:n-1]
	return ans
}

func maxDepth(s string) int {
	ans := 0
	st := make(Stack, 0)
	for _, v := range s {
		switch byte(v) {
		case '(':
			st.push(1)
		case ')':
			st.pop()
		}
		if ans < len(st) {
			ans = len(st)
		}
	}
	return ans
}
