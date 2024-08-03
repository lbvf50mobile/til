// Leetcode: 1460. Make Two Arrays Equal by Reversing Subarrays.
// https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 44.44% of Go online submissions for Make Two
// Arrays Equal by Reversing Subarrays.
// Memory Usage: 3.8 MB, less than 79.63% of Go online submissions for Make
// Two Arrays Equal by Reversing Subarrays.

package main

import (
	"reflect"
	"sort"
)

func canBeEqual(target []int, arr []int) bool {
	if len(target) != len(arr) {
		return false
	}
	sort.Ints(target)
	sort.Ints(arr)
	return reflect.DeepEqual(target, arr)
}
