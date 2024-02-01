// Leetcode: 2824. Count Pairs Whose Sum is Less than Target.
// https://leetcode.com/problems/count-pairs-whose-sum-is-less-than-target/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 39.00% of Go online submissions for Count Pairs
// Whose Sum is Less than Target.
// Memory Usage: 2.5 MB, less than 81.08% of Go online submissions for Count
// Pairs Whose Sum is Less than Target.
// 2024.02.01.

package main

import "sort"

func countPairs(nums []int, target int) int {
	// Hint from:
	// https://leetcode.com/problems/count-pairs-whose-sum-is-less-than-target/discuss/3932143/two-pointers-solution
	sort.Ints(nums) // <= Most importan one. Here!
	ans := 0
	l, r := 0, len(nums)-1
	for l < r {
		if nums[l]+nums[r] < target {
			ans += r - l // Because `r` moves left and becomes smaler.
			l += 1       // And increase `l` for the next step.
		} else {
			r -= 1 // Increase the biggest part. Save smallest one untouched.
		}
	}
	return ans
}
