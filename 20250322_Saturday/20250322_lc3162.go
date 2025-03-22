// 3162. Find the Number of Good Pairs I
// https://leetcode.com/problems/find-the-number-of-good-pairs-i/description/
// Accepted. Thanks God, Jesus Christ!
package main

func numberOfPairs(nums1 []int, nums2 []int, k int) int {
	ans := 0
	for _, v := range nums1 {
		for _, v1 := range nums2 {
			if 0 == v%(v1*k) {
				ans += 1
			}
		}
	}
	return ans
}
