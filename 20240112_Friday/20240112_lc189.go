// Leetcode: 189. Rotate Array.
// https://leetcode.com/problems/rotate-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 28 ms, faster than 54.60% of Go online submissions for Rotate
// Array.
// Memory Usage: 7.5 MB, less than 53.63% of Go online submissions for Rotate
// Array.

package main

func rotate(nums []int, k int) {
	// 1 2 3 :0
	// 3 1 2 :1
	// 2 3 1 :2
	// 1 2 3 :3
	n := len(nums)
	k = k % n
	if 0 == k {
		return
	}
	// Full rotate.
	rev(nums, 0, n-1)
	// 0..k-1
	rev(nums, 0, k-1)
	// k..n-1
	rev(nums, k, n-1)
}

func rev(x []int, i, j int) {
	for ; i < j; i, j = i+1, j-1 {
		x[i], x[j] = x[j], x[i]
	}
}
