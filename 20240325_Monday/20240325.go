// Leetcode: 442. Find All Duplicates in an Array.
// https://leetcode.com/problems/find-all-duplicates-in-an-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 49 ms, faster than 47.66% of Go online submissions for Find All
// Duplicates in an Array.
// Memory Usage: 11.9 MB, less than 5.47% of Go online submissions for Find
// All Duplicates in an Array.
// 2024.03.25 Daily Challenge.

package main

func findDuplicates(nums []int) []int {
	// Hint from DBabichev's solution.
	// Put numbers in places.
	n := nums
	ans := make([]int, 0, len(n)/2)
	for i, _ := range n {
		// Need to replace: n[i]-1 != i;
		// And there is a reason: n[i]-1 != n[n[i]-1];
		for n[i]-1 != i && n[i] != n[n[i]-1] {
			n[i], n[n[i]-1] = n[n[i]-1], n[i]
		}
	}
	for i, v := range n {
		if v-1 != i {
			ans = append(ans, v)
		}
	}
	return ans
}
