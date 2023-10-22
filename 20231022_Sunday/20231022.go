// Leetcode: 1793. Maximum Score of a Good Subarray.
// https://leetcode.com/problems/maximum-score-of-a-good-subarray/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 144 ms, faster than 83.33% of Go online submissions for Maximum
// Score of a Good Subarray.
// Memory Usage: 8.5 MB, less than 83.33% of Go online submissions for Maximum
// Score of a Good Subarray.
// 2023.10.22 Daily Challenge.
package main

func maximumScore(nums []int, k int) int {
	// Based on:
	// https://leetcode.com/problems/maximum-score-of-a-good-subarray/solution/
	n := len(nums)
	l,r := k, k
	ans, cr := nums[k], nums[k]
	for l > 0 || r < n - 1{
		tmp1, tmp2 := 0, 0
		if 0 < l {
			tmp1 = nums[l-1]
		}
		if r < n - 1 {
			tmp2 = nums[r+1]
		}
		if tmp1 < tmp2 {
			r += 1
			cr = min(cr,nums[r])
		} else {
			l -= 1
			cr = min(cr,nums[l])
		}
		ans = max(ans, cr * (r-l+1))
	}
	return ans
}

func min(a,b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a,b int) int {
	if a > b {
		return a
	}
	return b
}
