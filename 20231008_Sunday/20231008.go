// Leetcode: 1458. Max Dot Product of Two Subsequences.
// https://leetcode.com/problems/max-dot-product-of-two-subsequences/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 50.00% of Go online submissions for Max Dot
// Product of Two Subsequences.
// Memory Usage: 6.8 MB, less than 50.00% of Go online submissions for Max Dot
// Product of Two Subsequences.
// 2023.10.08 Daily Challenge.
package main

func maxDotProduct(nums1 []int, nums2 []int) int {
	// Based on:
	// https://leetcode.com/problems/max-dot-product-of-two-subsequences/solution/
	min1, max1 := minmax(nums1)
	min2, max2 := minmax(nums2)
	if max1 < 0 && min2 > 0 {
		return max1 * min2
	}
	if max2 < 0 && min1 > 0 {
		return max2 * min1
	}
	dp := make([][]int, len(nums1)+1)
	for i := 0; i <= len(nums1); i += 1 {
		dp[i] = make([]int, len(nums2)+1)
	}
	for i := len(nums1) - 1; i >= 0; i -= 1 {
		for j := len(nums2) - 1; j >= 0; j -= 1 {
			tmp := nums1[i]*nums2[j] + dp[i+1][j+1]
			if dp[i+1][j] > tmp {
				tmp = dp[i+1][j]
			}
			if dp[i][j+1] > tmp {
				tmp = dp[i][j+1]
			}
			dp[i][j] = tmp
		}
	}
	return dp[0][0]
}

func minmax(x []int) (int, int) {
	min, max := x[0], x[0]
	for _, v := range x {
		if min > v {
			min = v
		}
		if max < v {
			max = v
		}
	}
	return min, max
}
