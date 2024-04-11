// Leetcode: 402. Remove K Digits.
// https://leetcode.com/problems/remove-k-digits/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 69.77% of Go online submissions for Remove K
// Digits.
// Memory Usage: 4.4 MB, less than 96.51% of Go online submissions for Remove
// K Digits.
// 2024.04.11 Daily Challenge.

package main

func removeKdigits(num string, k int) string {
	stk := make([]byte, len(num))
	i := -1
	for _, v := range num {
		v := byte(v)
		for i >= 0 && k > 0 && stk[i] > v {
			i -= 1
			k -= 1
		}
		if i >= 0 || '0' != v {
			i += 1
			stk[i] = v
		}
	}
	if -1 == i {
		return "0"
	}
	if k >= i+1 {
		return "0"
	}
	if k > 0 {
		stk = stk[0 : i+1-k]
	} else {
		stk = stk[0 : i+1]
	}
	if 0 == len(stk) {
		return "0"
	}
	return string(stk)
}
