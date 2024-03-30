// Leetcode: 992. Subarrays with K Different Integers.
// https://leetcode.com/problems/subarrays-with-k-different-integers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 46 ms, faster than 93.75% of Go online submissions for Subarrays
// with K Different Integers.
// Memory Usage: 7 MB, less than 62.50% of Go online submissions for Subarrays
// with K Different Integers.
// 2024.03.30 Daily Challenge.

package main

func subarraysWithKDistinct(nums []int, k int) int {
	// Based on the Leetcode's solution.

	// Map to store the count of distinct values encountered.
	dstCount := make(map[int]int)
	tc, l, r, cc := 0, 0, 0, 0
	// tc - tota count, l - left, r - rifht, cc - cuurent count;

	for r < len(nums) {
		// Increment the count of the current elemnt int the window.
		dstCount[nums[r]] += 1

		// If ecnountering a new distinct element, decrement k;
		if 1 == dstCount[nums[r]] {
			k -= 1
		}

		// If K becomes negative, adjust the window from the left.
		if k < 0 {
			// Move the left pointer untilt thecountrof distinct element
			// becomes valid again.
			dstCount[nums[l]] -= 1
			if 0 == dstCount[nums[l]] {
				k += 1
			}
			l += 1
			cc = 0
		}
		// If K becomes zero, calculate subarrays.
		if 0 == k {
			// While teh count of leftremainsgreate than 1, keep shrinking the
			// window from the left
			for dstCount[nums[l]] > 1 {
				dstCount[nums[l]] -= 1
				l += 1
				cc += 1
			}
			// Add the count of subarrays wht K distinct element to the
			// total count.
			tc += (cc + 1)
		}
		// Move the right pointer to expand the winow.
		r += 1
	}
	return tc
}
