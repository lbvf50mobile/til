// Leetcode: 2147. Number of Ways to Divide a Long Corridor.
// https://leetcode.com/problems/number-of-ways-to-divide-a-long-corridor/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 41 ms, faster than 100.00% of Go online submissions for Number of
// Ways to Divide a Long Corridor.
// Memory Usage: 6.7 MB, less than 100.00% of Go online submissions for Number
// of Ways to Divide a Long Corridor.
// 2023.11.29 Updated.
package main

var mod = 1_000_000_007

func numberOfWays(corridor string) int {
	n := len(corridor)
	cr := corridor
	sCounter := 0
	pCounter := 0
	start := 0
	i := 0
	ans := 0

	// Reach frist seat.
	for i = 0; i < n && sCounter < 1; i += 1 {
		if 'S' == cr[i] {
			sCounter += 1
		}
	}
	start = i

	// Starting after the first seat.
	for i = start; i < n; i += 1 {
		if 'S' == cr[i] {
			sCounter += 1
			// At least one way to put a wall.
			if 0 == ans && 2 == sCounter {
				ans = 1
			}
			// Pair finished.
			if 3 == sCounter {
				// Number of way to put a wall.
				pCounter += 1
				ans = (ans * pCounter) % mod
				sCounter = 1 // NOW it is a fist seat a of new pair.
			}
			pCounter = 0 // Reset plants counter.
		}
		if 'P' == cr[i] {
			pCounter += 1

		}
	}
	if 2 != sCounter {
		ans = 0

	}
	return ans
}
