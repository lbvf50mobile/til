// Leetcode: 1353. Maximum Number of Events That Can Be Attended
// https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended/description/

// fails
// [[1,2],[1,2],[3,3],[1,5],[1,5]]
// This is because when sort, there would not be catched someting in center,
// like with [3,3], will be four steps from [1,2] to [1,5] missing [3,3].

package main

import (
	"sort"
)

func maxEvents(events [][]int) int {

	// Idea: Sort evetns, track freeday, and attend in competition as soon as
	// possible. Iterate over sorted evetns, increae freeday depending on
	// where is a new event bounds.

	sort.Slice(events, func(i, j int) bool {
		if events[i][0] == events[j][0] {
			return events[i][1] < events[j][1]
		}
		return events[i][0] < events[j][0]
	})

	ans := 0
	free := 1 // Free day.
	for _, v := range events {
		start, end := v[0], v[1]
		if free < start {
			ans += 1
			free = start + 1
		} else if start <= free && free <= end {
			ans += 1
			free += 1
		} else {
			// This case when end < free
			//  here just do nothing.
		}
	}
	return ans
}
