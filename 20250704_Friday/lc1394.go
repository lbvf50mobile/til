// Leetcode: 1394. Find Lucky Integer in an Array
// https://leetcode.com/problems/find-lucky-integer-in-an-array/description/?envType=daily-question&envId=2025-07-05
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func findLucky(arr []int) int {

	freq := make(map[int]int)
	for _, v := range arr {
		freq[v] += 1
	}
	max := -1
	for i, v := range freq {
		if (i == v) && v > max {
			max = v
		}
	}
	return max

}
