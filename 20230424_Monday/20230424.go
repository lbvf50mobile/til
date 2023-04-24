// Leetcode: 1046. Last Stone Weight.
// https://leetcode.com/problems/last-stone-weight/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 66.67% of Go online submissions for Last Stone
// Weight.
// Memory Usage: 2 MB, less than 20.19% of Go online submissions for Last Stone
// Weight.
// 2023.04.24 Daily Challenge.
package main

import "sort"

func lastStoneWeight(stones []int) int {
	sort.Ints(stones)
	for 2 <= len(stones) {
		n := len(stones)
		a, b := stones[n-1], stones[n-2]
		c := a - b
		if c > 0 {
			stones[n-2] = c
			stones = stones[:n-1]
		} else {
			stones = stones[:n-2]
		}
		sort.Ints(stones)
	}
	if 1 == len(stones) {
		return stones[0]
	}
	return 0
}
