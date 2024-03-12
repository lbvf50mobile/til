// Leetcode: 791. Custom Sort String.
// https://leetcode.com/problems/custom-sort-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 29.69% of Go online submissions for Custom Sort
// String.
// Memory Usage: 2 MB, less than 86.98% of Go online submissions for Custom
// Sort String.
// 2024.03.11 Daily Challenge.

package main

import "sort"

func customSortString(order string, s string) string {
	// 1. Create sorting map.
	// 2. Split string, by chars in order and not.
	// 3. Sort.
	// 4. Concatinate.
	h := make(map[byte]int)
	ord := []byte(order)
	for i, v := range ord {
		h[byte(v)] = i
	}
	suffix := make([]byte, 0, len(s))
	prefix := make([]byte, 0, len(s))
	for _, v := range s {
		v := byte(v) // Shadowing.
		if _, ok := h[v]; ok {
			suffix = append(suffix, byte(v))
		} else {
			prefix = append(prefix, byte(v))
		}
	}
	sort.Slice(suffix, func(i, j int) bool {
		return h[suffix[i]] < h[suffix[j]]
	})
	return string(prefix) + string(suffix)
}
