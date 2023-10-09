// Leetcode: 34. Find First and Last Position of Element in Sorted Array.
// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 67.04% of Go online submissions for Find First and
// Last Position of Element in Sorted Array.
// Memory Usage: 4 MB, less than 98.09% of Go online submissions for Find First
// and Last Position of Element in Sorted Array.
// 2023.10.09 Daily Challenge.
package main

var n []int

func searchRange(nums []int, target int) []int {
	// Based on:
	// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/discuss/1054742/Python-O(logn)
	n = nums
	l, h := bs(target), bs(target+1)-1
	if l <= h {
		return []int{l, h}
	}
	return []int{-1, -1}
}

func bs(x int) int {
	l, h := 0, len(n)
	for l < h {
		m := l + (h-l)/2
		if n[m] < x {
			l = m + 1
		} else {
			h = m
		}
	}
	return l
}
