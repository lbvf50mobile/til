// Leetcode: 744. Find Smallest Letter Greater Than Target.
// https://leetcode.com/problems/find-smallest-letter-greater-than-target/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 53.19% of Go online submissions for Find Smallest
// Letter Greater Than Target.
// Memory Usage: 2.6 MB, less than 46.10% of Go online submissions for Find
// Smallest Letter Greater Than Target.
// 2023.06.09 Daily Challenge.
package main

import ()

func nextGreatestLetter(letters []byte, target byte) byte {
	fst, lst := letters[0], letters[len(letters)-1]
	if lst <= target {
		return fst
	}
	for _, v := range letters {
		if v > target {
			return v
		}
	}
	return fst
}
