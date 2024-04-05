// Leetcode: 1544. Make The String Great.
// https://leetcode.com/problems/make-the-string-great/
// = = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 35.44% of Go online submissions for Make The
// String Great.
// Memory Usage: 2.6 MB, less than 24.05% of Go online submissions for Make
// The String Great.
// 2024.04.05 Daily Challenge.

package main

var b []byte
var u []bool

func makeGood(s string) string {
	b = []byte(s)            // Byes.
	u = make([]bool, len(s)) // Unset.
	for {
		if !findFix() {
			break
		}
	}
	return agregate()
}

func findFix() bool {
	i, j := 0, 0
	for i = 0; i < len(b)-1; i += 1 {
		if u[i] {
			continue
		}
		for j = i + 1; j < len(b); j += 1 {
			if u[j] {
				continue
			}
			if b[j]+32 == b[i] || b[j]-32 == b[i] { // <= Here!
				u[i], u[j] = true, true
				return true
			}
			break // <= Here!
		}
	}
	return false
}

func agregate() string {
	ans := ""
	for i, v := range b {
		if !u[i] {
			ans += string(v)
		}
	}
	return ans
}
