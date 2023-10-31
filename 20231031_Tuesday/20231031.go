// Leetcode: 2433. Find The Original Array of Prefix Xor.
// https://leetcode.com/problems/find-the-original-array-of-prefix-xor
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 93 ms, faster than 96.15% of Go online submissions for Find The
// Original Array of Prefix Xor.
// Memory Usage: 9.1 MB, less than 57.69% of Go online submissions for Find The
// Original Array of Prefix Xor.
// 2023.10.31 Daily Challenge.
package main

func findArray(pref []int) []int {
	n := len(pref)
	ans := make([]int, n)
	ans[0] = pref[0]
	for i := 1; i < n; i += 1 {
		ans[i] = pref[i] ^ pref[i-1]
	}
	return ans
}
