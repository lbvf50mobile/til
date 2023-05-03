// Leetcode: 2215. Find the Difference of Two Arrays.
// https://leetcode.com/problems/find-the-difference-of-two-arrays/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 33 ms, faster than 45.10% of Go online submissions for Find the
// Difference of Two Arrays.
// Memory Usage: 7.3 MB, less than 74.51% of Go online submissions for Find the
// Difference of Two Arrays.
// 2023.05.03 Daily Challenge.
package main

func findDifference(nums1 []int, nums2 []int) [][]int {
	a, b := uniq(nums1), uniq(nums2)
	var ans [][]int
	ans = make([][]int, 2)
	ans[0] = inOneNotInTwo(a, b)
	ans[1] = inOneNotInTwo(b, a)
	return ans
}

func uniq(x []int) map[int]bool {
	ans := make(map[int]bool)
	for _, v := range x {
		ans[v] = true
	}
	return ans
}

func inOneNotInTwo(a, b map[int]bool) []int {
	ans := make([]int, 0)
	for k, _ := range a {
		if _, ok := b[k]; !ok {
			ans = append(ans, k)
		}
	}
	return ans
}
