// Leetcode: 1207. Unique Number of Occurrences.
// https://leetcode.com/problems/unique-number-of-occurrences/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 76.48% of Go online submissions for Unique
// Number of Occurrences.
// Memory Usage: 2.3 MB, less than 97.86% of Go online submissions for Unique
// Number of Occurrences.
// 2024.01.17 Daily Challenge.

package main

func uniqueOccurrences(arr []int) bool {
	// Values range is from -1000 to +1000 = 2001 element.
	// Instad of hash map would be silice of inds with 2001 elements.
	h := make([]int, 2001)
	// - 1000 + x = 0; x = 1000: Input to index; need to add x; x == 1000;
	x := 1000
	for _, val := range arr {
		i := val + x
		h[i] += 1
	}
	h2 := make([]bool, 2001)
	for _, val := range h {
		if 0 != val {
			i := val + x
			if h2[i] {
				return false
			} else {
				h2[i] = true
			}
		}
	}
	return true
}
