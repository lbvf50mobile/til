// Leetcode: 1249. Minimum Remove to Make Valid Parentheses.
// https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 84.22% of Go online submissions for Minimum
// Remove to Make Valid Parentheses.
// Memory Usage: 6.2 MB, less than 98.06% of Go online submissions for Minimum
// Remove to Make Valid Parentheses.
// 2024.04.06 Daily Challenge.

package main

var b []byte
var u []bool // Unset.
var ans []byte

func minRemoveToMakeValid(s string) string {
	b = []byte(s)
	u = make([]bool, len(s))
	ans = make([]byte, 0, len(s))
	// Move L=>R remove incorrect close.
	// Move R=>L remove incorrect open.
	// Aggregate answer and return.
	moveLeftRight()
	moveRightLeft()
	agregate()
	return string(ans)
}

func moveLeftRight() {
	level := 0
	for i, v := range b {
		if u[i] {
			continue
		}
		if '(' == v {
			level += 1
		}
		if ')' == v {
			level -= 1
			if level < 0 {
				level += 1
				u[i] = true
			}
		}
	}

}
func moveRightLeft() {
	level := 0
	var i int
	var v byte
	n := len(b)
	for i = n - 1; i >= 0; i -= 1 {
		if u[i] {
			continue
		}
		v = b[i]
		if ')' == v {
			level += 1
		}
		if '(' == v {
			level -= 1
			if level < 0 {
				level += 1
				u[i] = true
			}
		}
	}
}
func agregate() {
	for i, v := range b {
		if u[i] {
			continue
		}
		ans = append(ans, v)
	}
}
