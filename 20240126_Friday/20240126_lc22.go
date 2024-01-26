// Leetcode: 22. Generate Parentheses.
// https://leetcode.com/problems/generate-parentheses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 75.80% of Go online submissions for Generate
// Parentheses.
// Memory Usage: 2.6 MB, less than 97.86% of Go online submissions for
// Generate Parentheses.
// 2023.01.26.
// https://gist.github.com/lbvf50mobile/49e6c02c57e8749f7abbfa2be864a6ae

package main

var ans []string
var state []byte
var size int

func generateParenthesis(n int) []string {
	size = n * 2
	ans = make([]string, 0)
	state = make([]byte, size)
	rec(true, 0, 0)
	return ans
}

// Back tracking.
func rec(open bool, sum int, pos int) {
	// Brackets that has no open ones.
	if sum < 0 {
		return
	}
	if open {
		state[pos] = '('
		sum += 1
	} else {
		state[pos] = ')'
		sum -= 1
	}
	// Time to write down a result.
	// Only one way to reach the end.
	if size == pos+1 {
		// Only if it is a correct state.
		if 0 == sum {
			ans = append(ans, string(state))
		}
		return
	} else {
		rec(true, sum, pos+1)
		rec(false, sum, pos+1)
	}
}
