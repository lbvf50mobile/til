// Leetcode: 1614. Maximum Nesting Depth of the Parentheses.
// https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 69.57% of Go online submissions for Maximum
// Nesting Depth of the Parentheses.
// Memory Usage: 2.2 MB, less than 28.26% of Go online submissions for Maximum
// Nesting Depth of the Parentheses.
// 2024.04.04 Daily Challenge.

package main

func maxDepth(s string) int {
	ans := 0
	d := 0
	for _, v := range s {
		switch byte(v) {
		case '(':
			d += 1
		case ')':
			d -= 1
		}
		if ans < d {
			ans = d
		}
	}
	return ans
}
