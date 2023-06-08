// Leetcode: 1318. Minimum Flips to Make a OR b Equal to c.
// https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 74.07% of Go online submissions for Minimum Flips
// to Make a OR b Equal to c.
// Memory Usage: 1.9 MB, less than 25.93% of Go online submissions for Minimum
// Flips to Make a OR b Equal to c.
// 2023.06.08 Update.
package main

func minFlips(a int, b int, c int) int {
	ans := 0
	for 0 != a || 0 != b || 0 != c {
		if 0 != (c & 1) {
			one := 0 != (a & 1)
			two := 0 != (b & 1)
			if !(one || two) {
				ans += 1
			}
		} else {
			ans += (a & 1) + (b & 1)
		}
		a >>= 1
		b >>= 1
		c >>= 1
	}
	return ans
}
