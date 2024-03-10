// Leetcode: 349. Intersection of Two Arrays.
// https://leetcode.com/problems/intersection-of-two-arrays/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 44.47% of Go online submissions for Intersection
// of Two Arrays.
// Memory Usage: 3 MB, less than 39.85% of Go online submissions for
// Intersection of Two Arrays.
// 2024.03.10 Daily Challenge.

package main

func intersection(nums1 []int, nums2 []int) []int {
	h1, ansMap := make(map[int]bool), make(map[int]bool)
	for _, v := range nums1 {
		h1[v] = true
	}
	for _, v := range nums2 {
		if h1[v] {
			ansMap[v] = true
		}
	}
	ans := make([]int, 0, len(ansMap))
	for k, _ := range ansMap {
		ans = append(ans, k)
	}
	return ans
}
