// Leetcode: 150. Evaluate Reverse Polish Notation.
// https://leetcode.com/problems/evaluate-reverse-polish-notation/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 12.81% of Go online submissions for Evaluate
// Reverse Polish Notation.
// Memory Usage: 5.8 MB, less than 5.17% of Go online submissions for Evaluate
// Reverse Polish Notation.
// 2024.01.30 Daily Challenge.

package main

import "strconv"

// import "fmt"
// var p = fmt.Println

type act struct {
	act   bool
	oper  string
	value int
}

type stack struct {
	a []*act
}

func (x *stack) push(v *act) {
	x.a = append(x.a, v)
}

func (x *stack) pop() *act {
	ans := x.a[len(x.a)-1]
	x.a = x.a[:len(x.a)-1]
	return ans
}
func (x *stack) top() *act {
	return x.a[len(x.a)-1]
}

func (x *stack) size() int {
	return len(x.a)
}

func evalRPN(tokens []string) int {
	// 1. Map tockens.
	// But in the reverse order.
	tkns := make([]*act, len(tokens))
	n := len(tokens)
	for i := n - 1; i >= 0; i -= 1 {
		v := tokens[i]
		tmp := &act{true, "", 0}
		if isOp(v) {
			tmp.act = true
			tmp.oper = v
		} else {
			tmp.act = false
			tmp.value, _ = strconv.Atoi(v)
		}
		// In reverse order!
		tkns[n-i-1] = tmp
	}
	// 2. Pop elements.
	// If value push value.
	// If operation get two values, calculate and push back.
	stc := &stack{tkns}
	vals := make([]int, 0)
	for 0 < stc.size() {
		// p(stc.top())
		if stc.top().act {
			x := stc.pop()
			n := len(vals)
			a, b := vals[n-2], vals[n-1]
			// <== Here!
			// Forget to remove to elements!
			vals = vals[:n-2]

			vals = append(vals, op(a, b, x.oper))
		} else {
			x := stc.pop()
			vals = append(vals, x.value)
		}
	}
	return vals[0]
}

func op(a, b int, oper string) int {
	switch oper {
	case "+":
		return a + b
	case "-":
		return a - b
	case "*":
		return a * b
	case "/":
		return a / b
	default:
		panic("unknown")
	}
}

func isOp(x string) bool {
	if "+" == x || "-" == x || "*" == x || "/" == x {
		return true
	}
	return false
}
