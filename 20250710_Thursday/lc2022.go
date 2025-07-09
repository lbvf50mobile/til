// Leetcode: 2022. Convert 1D Array Into 2D Array
// https://leetcode.com/problems/convert-1d-array-into-2d-array/description/

package main

func construct2DArray(original []int, m int, n int) [][]int {
	var ans [][]int
	if m*n != len(original) {
		return ans
	}
	k := 0
	ans = make([][]int, m)
	for i := 0; i < m; i += 1 {
		ans[i] = make([]int, n)
		for j := 0; j < n; j += 1 {
			ans[i][j] = original[k]
			// Increase original counter.
			k += 1
		}
	}
	return ans
}
