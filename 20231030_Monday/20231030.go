// Leetcode: 1356. Sort Integers by The Number of 1 Bits.
// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 69.77% of Go online submissions for Sort Integers
// by The Number of 1 Bits.
// Memory Usage: 3.4 MB, less than 100.00% of Go online submissions for Sort
// Integers by The Number of 1 Bits.
// 2023.10.30 Daily Challenge.
package main

import (
	"sort"
)

func sortByBits(arr []int) []int {
	sort.SliceStable(arr, func(i, j int) bool {
		a, b := arr[i], arr[j]
		ai, bi := bitsN(a), bitsN(b)
		if ai == bi {
			return a < b
		} else {
			return ai < bi
		}
	})
	return arr
}

func bitsN(x int) int {
	ans := 0
	for x != 0 {
		ans += (x % 2)
		x >>= 1
	}
	return ans
}
