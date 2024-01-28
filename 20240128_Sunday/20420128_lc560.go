// Leetcode: 560. Subarray Sum Equals K.
// https://leetcode.com/problems/subarray-sum-equals-k/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 40 ms, faster than 71.91% of Go online submissions for Subarray
// Sum Equals K.
// Memory Usage: 7.7 MB, less than 28.31% of Go online submissions for
// Subarray Sum Equals K.
// 2024.01.28.

package main

func subarraySum(nums []int, k int) int {
	// Got hint here:
	// https://leetcode.com/problems/subarray-sum-equals-k/discuss/341399/Python-clear-explanation-with-code-and-example
	// total - sum => (something in the hash);
	sum := 0
	h := make(map[int]int)
	h[0] = 1
	ans := 0
	for _, v := range nums {
		sum += v
		ans += h[sum-k]
		h[sum] += 1
	}
	return ans
}
