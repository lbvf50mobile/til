// Leetcode: 2485. Find the Pivot Integer.
// https://leetcode.com/problems/find-the-pivot-integer/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Find the
// Pivot Integer.
// Memory Usage: 2 MB, less than 25.00% of Go online submissions for Find the
// Pivot Integer.
// 2024.03.13 Daily Challenge.

package main

func pivotInteger(n int) int {
	prefix := make([]int, 1001)
	suffix := make([]int, 1001)
	prefix[1] = 1
	suffix[n] = n
	for i := 2; i <= n; i += 1 {
		prefix[i] = i + prefix[i-1]
	}
	for j := n - 1; j >= 1; j -= 1 {
		suffix[j] = j + suffix[j+1]
	}
	for i := 1; i <= n; i += 1 {
		if prefix[i] == suffix[i] {
			return i
		}
	}
	return -1
}
