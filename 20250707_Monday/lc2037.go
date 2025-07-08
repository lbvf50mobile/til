// Leetcode: 2037. Minimum Number of Moves to Seat Everyone
// https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import "sort"

func minMovesToSeat(seats []int, students []int) int {
	sort.Ints(seats)
	sort.Ints(students)
	ans := 0
	for i, sd := range students {
		st := seats[i]
		ans += abs(sd - st)
	}
	return ans
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
