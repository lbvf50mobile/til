// Leetcode: 137. Single Number II.
// https://leetcode.com/problems/single-number-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 21.19% of Go online submissions for Single Number
// II.
// Memory Usage: 3.9 MB, less than 26.27% of Go online submissions for Single
// Number II.
// 2023.07.04 Daily Challenge.
package main

import (
	"fmt"
)

func singleNumber(nums []int) int {
	hash := make(map[int]int)
	for _, v := range nums {
		hash[v] += 1
		if 3 == hash[v] {
			delete(hash, v)
		}
	}
	for k, _ := range hash {
		return k  
	}
	return -1
}
