// 3065. Minimum Operations to Exceed Threshold Value I
// https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-i/description/
// Accepted. Thanks God, Jesus Christ!
package main

func minOperations(nums []int, k int) int {
	// The question is: all elements of the array are greater than or equal to k.
	// I need to remove all element that less than k. Right? Yes.
	counter := 0
	for _, v := range nums {
		if v < k {
			counter += 1
		}
	}
	return counter
}
