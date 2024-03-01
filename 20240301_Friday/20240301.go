// Leetcode: 2864. Maximum Odd Binary Number.
// https://leetcode.com/problems/maximum-odd-binary-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Maximum Odd
// Binary Number.
// Memory Usage: 3.9 MB, less than 34.92% of Go online submissions for Maximum
// Odd Binary Number.
// 2024.03.01 Daily Challenge.

package main

func maximumOddBinaryNumber(s string) string {
	// n - size, x - ones, z - zeros. (x-1) z (1)
	n := len(s)
	x := 0
	for _, v := range s {
		if '1' == v {
			x += 1
		}
	}
	z := n - x
	ans := ""
	// (x-1) ones.
	for i := 0; i < (x - 1); i += 1 {
		ans += "1"
	}
	// z zeros.
	for i := 0; i < z; i += 1 {
		ans += "0"
	}
	if len(ans) < n {
		ans += "1"
	}
	return ans
}
