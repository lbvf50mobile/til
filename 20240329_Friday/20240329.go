// Leetcode: 2962. Count Subarrays Where Max Element Appears at Least K Times.
// https://leetcode.com/problems/count-subarrays-where-max-element-appears-at-least-k-times/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 115 ms, faster than 100.00% of Go online submissions for Count
// Subarrays Where Max Element Appears at Least K Times.
// Memory Usage: 8.8 MB, less than 87.50% of Go online submissions for Count
// Subarrays Where Max Element Appears at Least K Times.
// 2024.03.29 Daily Challenge.

package main

func countSubarrays(nums []int, k int) int64 {
	// Based on the Leetcode's solution.
	max := getMax(nums)
	var ans int64
	i, count := 0, 0
	for _, v := range nums {
		if max == v {
			count += 1
		}
		for k == count {
			if nums[i] == max {
				count -= 1
			}
			i += 1
		}
		ans += int64(i)
	}
	return ans
}

func getMax(n []int) int {
	ans := n[0]
	for _, v := range n {
		if ans < v {
			ans = v
		}
	}
	return ans
}
