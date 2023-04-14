// Leetcode: 20. Valid Parentheses.
// https://leetcode.com/problems/valid-parentheses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 59.95% of Go online submissions for Valid
// Parentheses. 
// Memory Usage: 2.1 MB, less than 45.21% of Go online submissions
// for Valid Parentheses.
// 2023.04.14 Update.
package main

func isValid(s string) bool {
	open := map[rune]rune{
		'(': ')',
		'[': ']',
		'{': '}',
	}
	cls := map[rune]rune{
		'}': '{',
		']': '[',
		')': '(',
	}
	stack := []rune{}
	for _, x := range s {
		if _, ok := open[x]; ok {
			stack = append(stack, x)
		} else {
			if 0 == len(stack) {
				return false
			}
			val, ok := cls[x]
			if !ok || stack[len(stack)-1] != val {
				return false
			}
			stack = stack[:len(stack)-1]
		}
	}
	return 0 == len(stack)
}
