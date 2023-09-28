// Leetcode: 905. Sort Array By Parity.
// https://leetcode.com/problems/sort-array-by-parity/
// = = = = = = = = = = = = = =
// Accpted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 57.51% of Go online submissions for Sort Array By
// Parity.
// Memory Usage: 5.1 MB, less than 19.74% of Go online submissions for Sort
// Array By Parity.
// 2023.09.28 Daily Challenge.
package main
func sortArrayByParity(nums []int) []int {
	e,o := 0, len(nums) - 1 // even, odd;
	ans := make([]int, len(nums))
	for _,v := range nums {
		if e > o {
			break
		}
		if 0 == v%2 {
			ans[e] = v
			e += 1
		} else {
			ans[o] = v
			o -= 1
		}
	}
	return ans
}
