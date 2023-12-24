// Leetcode: 1758. Minimum Changes To Make Alternating Binary String.
// https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Minimum
// Changes To Make Alternating Binary String.
// Memory Usage: 2.5 MB, less than 98.41% of Go online submissions for Minimum
// Changes To Make Alternating Binary String.
// 2023.12.24 Daily Challenge.

package main

func minOperations(s string) int {
	// Counters of the amount of changes.
	cntZ, cnt1 := 0, 0 // counter zeros frist, counter ones first.
	for i, v := range s {
		if 0 == i%2 {
			// Even index, "first" element.
			if '1' == v {
				// 10
				cntZ += 1 // Need to change for zero.
			} else {
				// 01
				cnt1 += 1 // Need to change for ones.
			}
		} else {
			// Odd index, "second" element.
			if '1' == v {
				// 01
				cnt1 += 1 // For ones, here must be zero.
			} else {
				// 10
				cntZ += 1 // For zeros, here must be one.
			}
		}
	}
	if cntZ < cnt1 {
		return cntZ
	}
	return cnt1
}
