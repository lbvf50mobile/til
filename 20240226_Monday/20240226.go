// Leetcode: 1. Two Sum.
// https://leetcode.com/problems/two-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 77.05% of Go online submissions for Two Sum.
// Memory Usage: 4.2 MB, less than 19.92% of Go online submissions for Two
// Sum.
// 2024.02.26 Daily Challenge.

package main

func twoSum(nums []int, target int) []int {
	hsh := make(map[int]int)
	for i, v := range nums {
		b := target - v
		if _, ok := hsh[b]; ok {
			return []int{i, hsh[b]}
		}
		hsh[v] = i
	}
	panic("Unsolved.")
}
