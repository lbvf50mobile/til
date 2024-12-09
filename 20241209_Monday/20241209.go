// Leetcode: 3152. Special Array II
// https://leetcode.com/problems/special-array-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Special
// Array II.
// Memory Usage: 24.3 MB, less than 9.09% of Go online submissions for Special
// Array II.
// 2024.12.09 Daily Challenge.
package main

func isArraySpecial(nums []int, queries [][]int) []bool {
	// Translation of the Leetcode's solution.
	// https://leetcode.com/problems/special-array-ii/solution/
	ans := make([]bool, len(queries))
	prefix := make([]int, len(nums))
	prefix[0] = 0
	for i := 1; i < len(nums); i += 1 {
		if nums[i]%2 == nums[i-1]%2 {
			// New violate index found
			prefix[i] = prefix[i-1] + 1
		} else {
			prefix[i] = prefix[i-1]
		}
	}
	for i, query := range queries {
		start := query[0]
		end := query[1]
		ans[i] = (0 == prefix[end]-prefix[start])
	}
	return ans
}
