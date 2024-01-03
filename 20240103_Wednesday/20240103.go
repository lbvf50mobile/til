// Leetcode: 2125. Number of Laser Beams in a Bank.
// https://leetcode.com/problems/number-of-laser-beams-in-a-bank/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 31 ms, faster than 53.33% of Go online submissions for Number of
// Laser Beams in a Bank.
// Memory Usage: 7 MB, less than 48.89% of Go online submissions for Number of
// Laser Beams in a Bank.
// 2024.01.03 Daily Challenge.

package main

func numberOfBeams(bank []string) int {
	// Two vars for prev and cur. row.
	// if curr is zero just skip it.
	// Number of beams between rows `prev*curr`;
	ans := 0
	prev, curr := 0, 0
	for _, row := range bank {
		// Calculate number of devices;
		curr = 0
		for _, val := range row {
			if '1' == val {
				curr += 1
			}
		}
		// Work only if curr != 0
		if 0 != curr {
			ans += (curr * prev)
			prev = curr
		}
	}
	return ans
}
