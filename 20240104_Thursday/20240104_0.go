// Leetcode: 2870. Minimum Number of Operations to Make Array Empty.
// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-empty/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 91 ms, faster than 100.00% of Go online submissions for Minimum
// Number of Operations to Make Array Empty.
// Memory Usage: 9.9 MB, less than 51.85% of Go online submissions for Minimum
// Number of Operations to Make Array Empty.
// 2024.01.04 Daily Challenge.

package main

func minOperations(nums []int) int {
	ans := 0
	// 1. Create a Counter Data Structure.
	counter := make(map[int]int)
	for _, v := range nums {
		counter[v] += 1
	}
	for _, v := range counter {
		if 1 == v {
			return -1
		}
		if 0 == v%3 {
			ans += v / 3
			continue
		}
		if 2 == v%3 {
			ans += (v / 3) + 1
			continue
		}
		if 0 == (v-4)%3 {
			ans += (v-4)/3 + 2
			continue
		}
		if 0 == v%2 {
			ans += (v / 2)
		}
		return -1
	}
	// There must by at least one operation.
	if 0 == ans {
		return -1
	}
	return ans
}
