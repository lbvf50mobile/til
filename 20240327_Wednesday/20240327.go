// Leetcode: 713. Subarray Product Less Than K.
// https://leetcode.com/problems/subarray-product-less-than-k/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 63 ms, faster than 74.40% of Go online submissions for Subarray
// Product Less Than K.
// Memory Usage: 7.1 MB, less than 80.00% of Go online submissions for
// Subarray Product Less Than K.
// 2024.03.27 Daily Challenge.

package main

func numSubarrayProductLessThanK(nums []int, k int) int {
	if k <= 1 {
		return 0
	}
	ans := 0
	prod := 1
	i := 0
	for j, v := range nums {
		prod *= v
		for prod >= k {
			prod /= nums[i]
			i += 1
		}
		ans += (j - i + 1)
	}
	return ans
}
