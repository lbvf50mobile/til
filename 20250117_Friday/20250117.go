// Leetcode: 2683. Neighboring Bitwise XOR
// https://leetcode.com/problems/neighboring-bitwise-xor/description/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 13.31 MB Beats 11.11%
// 2025.01.17 Daily Challenge.

package main

import (
// "fmt"
)

func doesValidArrayExist(derived []int) bool {
	sum := 0
	for _, v := range derived {
		sum ^= v
	}
	return 0 == sum
}
