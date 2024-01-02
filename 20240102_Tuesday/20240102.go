// Leetcode: 2610. Convert an Array Into a 2D Array With Conditions.
// https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 68.00% of Go online submissions for Convert an
// Array Into a 2D Array With Conditions.
// Memory Usage: 3.4 MB, less than 62.00% of Go online submissions for Convert
// an Array Into a 2D Array With Conditions.
// 2024.01.02 Daily Challenge.

package main

func findMatrix(nums []int) [][]int {
	ans := make([][]int, 0)
	counter := make(map[int]int)
	for _, v := range nums {
		counter[v] += 1
	}
	did := true
	for did {
		did = false
		tmp := make([]int, 0)
		for k, v := range counter {
			if v > 0 {
				tmp = append(tmp, k)
				counter[k] -= 1
				did = true
			}
		}
		if did {
			ans = append(ans, tmp)
		}
	}
	return ans
}
