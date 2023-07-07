// Leetcode: 209. Minimum Size Subarray Sum.
// https://leetcode.com/problems/minimum-size-subarray-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 34 ms, faster than 83.18% of Go online submissions for Minimum Size
// Subarray Sum.
// Memory Usage: 6.9 MB, less than 93.27% of Go online submissions for Minimum
// Size Subarray Sum.
// 2023.07.07 Updated.
package main

func minSubArrayLen(target int, nums []int) int {
	n, ans := len(nums), len(nums)+1
	i, sum := 0, 0
	for j, x := range nums {
		l := j - i + 1
		sum += x
		if sum >= target && l < ans {
			ans = l
		}
		for (sum >= target || n-1 == j) && i < j {
			sum -= nums[i]
			i += 1
			l := j - i + 1
			if sum >= target && l < ans {
				ans = l
			}
		}
	}
	if n+1 == ans {
		return 0
	}
	return ans
}
