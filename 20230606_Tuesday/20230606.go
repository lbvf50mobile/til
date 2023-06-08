// Leetcode: 1502. Can Make Arithmetic Progression From Sequence.
// https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 54.23% of Go online submissions for Can Make
// Arithmetic Progression From Sequence.
// Memory Usage: 2.5 MB, less than 100.00% of Go online submissions for Can Make
// Arithmetic Progression From Sequence.
// 2023.06.07 Update.
package main

import "sort"

func canMakeArithmeticProgression(arr []int) bool {
	a := arr
	sort.Ints(a)
	d := a[1] - a[0]
	for i := 2; i < len(a); i += 1 {
		if a[i]-a[i-1] != d {
			return false
		}
	}
	return true
}
