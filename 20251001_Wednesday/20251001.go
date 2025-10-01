// Leetcode: 1518. Water Bottles
// https://leetcode.com/problems/water-bottles/description/?envType=daily-question&envId=2025-10-01
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func numWaterBottles(numBottles int, numExchange int) int {
	drink := 0
	full := numBottles
	empty := 0
	for full > 0 {
		drink += full
		empty += full
		full = empty / numExchange
		empty %= numExchange
	}
	return drink
}
