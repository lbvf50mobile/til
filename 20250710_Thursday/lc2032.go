// Leetcode: 2032. Two Out of Three
// https://leetcode.com/problems/two-out-of-three/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func twoOutOfThree(nums1 []int, nums2 []int, nums3 []int) []int {
	ans := make([]int, 0, max(len(nums1), len(nums2), len(nums3)))
	m1, m2, m3, used := getIncluded(nums1), getIncluded(nums2), getIncluded(nums3), make(map[int]bool)
	tmp := gule(nums1, nums2, nums3)
	for _, v := range tmp {
		if used[v] {
			continue
		}
		if (m1[v] && m2[v]) || (m2[v] && m3[v]) || (m3[v] && m1[v]) {
			ans = append(ans, v)
			used[v] = true
		}
	}
	return ans
}

func gule(nums ...[]int) []int {
	tmp := make([]int, 0, len(nums[0])+len(nums[1])+len(nums[2]))
	tmp = append(tmp, nums[0]...)
	tmp = append(tmp, nums[1]...)
	tmp = append(tmp, nums[2]...)
	return tmp
}

func getIncluded(x []int) map[int]bool {
	f := make(map[int]bool)
	for _, v := range x {
		f[v] = true
	}
	return f
}
