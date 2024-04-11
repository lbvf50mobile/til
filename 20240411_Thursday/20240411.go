// Leetcode: 402. Remove K Digits.
// https://leetcode.com/problems/remove-k-digits/

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
	if k > 0 {
		stk = stk[0 : i+1-k]
	} else {
		stk = stk[0:i+1]
	}
	if 0 == len(stk) {
		return "0"
	}
	return string(stk)
}
