// Leetcode: 440. K-th Smallest in Lexicographical Order
// https://leetcode.com/problems/k-th-smallest-in-lexicographical-order/?envType=daily-question&envId=2025-06-09
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

func findKthNumber(n int, k int) int {
	curr := 1
	k -= 1
	steps := 0
	for k > 0 {
		steps = countSteps(n, curr, curr+1)
		if steps <= k {
			k -= steps
			curr += 1
		} else {
			curr *= 10
			k -= 1 // Just hop over curr pos.
		}
	}
	return curr
}

func countSteps(n, p1, p2 int) int {
	steps := 0
	for p1 <= n {
		steps += (min(n+1, p2) - p1)
		p1 *= 10
		p2 *= 10
	}
	return steps
}
