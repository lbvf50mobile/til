// Leetcode: 1287. Element Appearing More Than 25% In Sorted Array.
// https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 82.35% of Go online submissions for Element
// Appearing More Than 25% In Sorted Array.
// Memory Usage: 5.3 MB, less than 85.29% of Go online submissions for Element
// Appearing More Than 25% In Sorted Array.
// 2023.12.11 Daily Challenge.

package main

func findSpecialInteger(arr []int) int {
	size := len(arr)
	quadro := float32(size) / 4.0
	counter := 0
	for i, v := range arr {
		if 0 == i || arr[i-1] != v {
			counter = 0
		}
		counter += 1
		if float32(counter) > quadro {
			return v
		}
	}
	panic("Could not reach this point.")
}
