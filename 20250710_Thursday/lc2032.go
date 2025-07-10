// Leetcode: 2032. Two Out of Three
// https://leetcode.com/problems/two-out-of-three/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func twoOutOfThree(nums1 []int, nums2 []int, nums3 []int) []int {
	freq := make(map[int]int)
	ans := make([]int, 0, 100)
	for _, v := range nums1 {
		freq[v] |= 1
	}
	for _, v := range nums2 {
		freq[v] |= 2
	}
	for _, v := range nums3 {
		freq[v] |= 4
	}
	for key, f := range freq {
		if 0 != f&(f-1) {
			ans = append(ans, key)
		}
	}
	return ans
}
