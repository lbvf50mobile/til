// Leetcode: 150. Evaluate Reverse Polish Notation.
// https://leetcode.com/problems/evaluate-reverse-polish-notation/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 72.45% of Go online submissions for Evaluate
// Reverse Polish Notation.
// Memory Usage: 4.1 MB, less than 93.27% of Go online submissions for
// Evaluate Reverse Polish Notation.
// 2024.01.30 Daily Challenge.

package main

import "strconv"

func evalRPN(tokens []string) int {
	// Value push.
	// Operator pop, pop, push.
	vals := make([]int, len(tokens))
	j := 0
	for _, v := range tokens {
		if isOp(v) {
			a, b := vals[j-2], vals[j-1]
			j -= 2
			vals[j] = getOpVal(a, b, v)
			j += 1
		} else {
			vals[j], _ = strconv.Atoi(v)
			j += 1
		}
	}
	return vals[j-1]
}

func isOp(x string) bool {
	switch x {
	case "*":
		return true
	case "+":
		return true
	case "-":
		return true
	case "/":
		return true
	default:
		return false
	}
}

func getOpVal(a, b int, op string) int {
	switch op {
	case "*":
		return a * b
	case "+":
		return a + b
	case "-":
		return a - b
	case "/":
		return a / b
	default:
		panic("Unknown operator.")
	}
}
