// Leetcode: 2402. Meeting Rooms III.
// https://leetcode.com/problems/meeting-rooms-iii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 310 ms, faster than 12.12% of Go online submissions for Meeting
// Rooms III.
// Memory Usage: 19.1 MB, less than 36.36% of Go online submissions for
// Meeting Rooms III.
// 2024.02.18 Daily Challenge.

package main

import (
	"sort"
)

func mostBooked(n int, meetings [][]int) int {
	// Based on the Leetcode's solution.
	m := meetings
	mInt := 9223372036854775807
	rat := make([]int, n) // room availability time.
	mc := make([]int, n)  // meeting count.
	sort.SliceStable(m, func(i, j int) bool {
		return m[i][0] < m[j][0]
	})
	for _, v := range m {
		s, e := v[0], v[1] // start, end;
		mrat := mInt       // min room availabilit time.
		matr := 0          // min availablte time room.
		fur := false       // found unused room.
		for i := 0; i < n; i += 1 {
			if rat[i] <= s {
				fur = true
				mc[i] += 1
				rat[i] = e
				break
			}
			if mrat > rat[i] {
				mrat = rat[i]
				matr = i
			}
		}
		if !fur {
			rat[matr] += (e - s)
			mc[matr] += 1
		}
	}
	max := 0
	for _, v := range mc {
		if max < v {
			max = v
		}
	}
	for i, v := range mc {
		if v == max {
			return i
		}
	}
	panic("Unreachable.")
}
