// Leetcode: 1561. Maximum Number of Coins You Can Get.
// https://leetcode.com/problems/maximum-number-of-coins-you-can-get/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 111 ms, faster than 88.00% of Go online submissions for Maximum
// Number of Coins You Can Get.
// Memory Usage: 8 MB, less than 80.00% of Go online submissions for Maximum
// Number of Coins You Can Get.
// 2023.11.24 Daily Challenge.
package main

import (
	"sort"
)

func maxCoins(piles []int) int {
	sort.Slice(piles, func(i, j int) bool {
		return piles[i] > piles[j]
	})
	steps := len(piles) / 3
	index := 1
	ans := 0
	// Select every second largest element.
	for i := 0; i < steps; i += 1 {
		ans += piles[index]
		index += 2
	}
	return ans
}
