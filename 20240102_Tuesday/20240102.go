// Leetcode: 2610. Convert an Array Into a 2D Array With Conditions.
// https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/
// Wrong.

package main

func findMatrix(nums []int) [][]int {
	// Insert in answer when a digit is duplicated.
	ans := make([][]int, 0)
	tmp := make([]int, 0)
	mp := make(map[int]bool)
	for _, v := range nums {
		if mp[v] {
			ans = append(ans, tmp)
			tmp = make([]int, 0)
			mp = make(map[int]bool)
		}
		mp[v] = true
		tmp = append(tmp, v)
	}
	ans = append(ans,tmp)
	return ans
}
