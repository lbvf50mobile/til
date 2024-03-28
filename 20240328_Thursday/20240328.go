// Leetcode: 2958. Length of Longest Subarray With at Most K Frequency.
// https://leetcode.com/problems/length-of-longest-subarray-with-at-most-k-frequency
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 231 ms, faster than 24.24% of Go online submissions for Length of
// Longest Subarray With at Most K Frequency.
// Memory Usage: 12.8 MB, less than 81.82% of Go online submissions for Length
// of Longest Subarray With at Most K Frequency.
// 2024.03.28 Daily Challenge.

package main

func maxSubarrayLength(nums []int, k int) int {
	// Shrink if freq of nums[j] > k.
	h := make(map[int]int)
	i, j := 0, 0
	ans := 1
	h[nums[j]] = 1
	for j := 1; j < len(nums); j += 1 {
		h[nums[j]] += 1
		// Normalize.
		// Shrink if newest element makes the interval inappropriate.
		for h[nums[j]] > k {
			h[nums[i]] -= 1
			i += 1
		}
		length := (j - i + 1)
		if ans < length {
			ans = length
		}
	}
	return ans
}
