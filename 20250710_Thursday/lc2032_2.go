// Leetcode: 2032. Two Out of Three
// https://leetcode.com/problems/two-out-of-three/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func twoOutOfThree(nums1 []int, nums2 []int, nums3 []int) []int {
	u1, u2, u3 := make([]int, 101), make([]int, 101), make([]int, 101)
	for _, v := range nums1 {
		u1[v] = 1
	}
	for _, v := range nums2 {
		u2[v] = 1
	}
	for _, v := range nums3 {
		u3[v] = 1
	}
	ans := make([]int, 0, 100)
	for i := 1; i < 101; i += 1 {
		if u1[i]+u2[i]+u3[i] > 1 {
			ans = append(ans, i)
		}
	}
	return ans
}
