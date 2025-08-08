// Leetcode: 300. Longest Increasing Subsequence
// https://leetcode.com/problems/longest-increasing-subsequence/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"sort"
)

func lengthOfLIS(nums []int) int {
	// The main concept: build sorted interval at the begining of the arra
	// using Binary searh.
	// Mark a sorted part as a first element at the begingi, start to move
	// forward. If new element is smaller thay one of existed in sortet part
	// just insert it thre. If not increase the sorted interval.
	n := len(nums)
	if 1 == n {
		return 1
	}
	// Let make sorted interal [0,1)
	s := 1

	// Now iterate over the rest of array and push elements in sorted
	// interval, or insrease the sorted interval.
	for i := 1; i < n; i += 1 {
		cur := nums[i]
		j := sort.Search(s, func(i int) bool { return nums[i] >= cur })
		if j == s {
			nums[j] = cur
			s += 1
		} else {
			nums[j] = cur
		}
	}
	// It is the length of sorted interval just return it.
	return s
}
