// Leetcode: 1838. Frequency of the Most Frequent Element.
// https://leetcode.com/problems/frequency-of-the-most-frequent-element/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 282 ms, faster than 5.26% of Go online submissions for Frequency
// of the Most Frequent Element.
// Memory Usage: 8 MB, less than 97.37% of Go online submissions for Frequency
// of the Most Frequent Element.
// Runtime: 184 ms, faster than 76.32% of Go online submissions for Frequency
// of the Most Frequent Element.
// Memory Usage: 8.2 MB, less than 92.11% of Go online submissions for
// Frequency of the Most Frequent Element.
// 2023.11.18 Daily Challenge.
package main

import (
	"sort"
)

func maxFrequency(nums []int, k int) int {
	// Based on:
	// https://leetcode.com/problems/frequency-of-the-most-frequent-element/solution/
	sort.Ints(nums)
	ans, l, curr := 0, 0, 0
	n := len(nums)
	for r := 0; r < n; r += 1 {
		target := nums[r]
		curr += target
		for (r-l+1)*target-curr > k {
			curr -= nums[l]
			l += 1
		}
		tmp := r - l + 1
		if tmp > ans {
			ans = tmp
		}
	}
	return ans
}
