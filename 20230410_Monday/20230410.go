// Leetcode: 20. Valid Parentheses.
// https://leetcode.com/problems/valid-parentheses/
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
