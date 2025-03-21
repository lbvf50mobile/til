// Leetcode: 1752. Check if Array Is Sorted and Rotated
// Accepted. Thanks God!
package main

func check(nums []int) bool {
	// There must be only one error!
	counter := 0
	n := len(nums)
	for i := 0; i < len(nums); i += 1 {
		j := (n + i - 1) % n
		if nums[i] < nums[j] {
			counter += 1
		}
	}
	// 1111
	return 1 >= counter
}
