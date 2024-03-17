// Leetcode: 57. Insert Interval.
// https://leetcode.com/problems/insert-interval/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 77.02% of Go online submissions for Insert
// Interval.
// Memory Usage: 4.3 MB, less than 82.61% of Go online submissions for Insert
// Interval.
// 2024.03.17 Daily Challenge.

package main

func insert(intervals [][]int, newInterval []int) [][]int {
	n := len(intervals)
	i := 0
	ans := make([][]int, 0, n)

	// Insert before
	for i < n && intervals[i][1] < newInterval[0] {
		ans = append(ans, intervals[i])
		i += 1
	}

	// Update new Interval
	for i < n && intervals[i][1] >= newInterval[0] && newInterval[1] >= intervals[i][0] {
		s := min(newInterval[0], intervals[i][0])
		e := max(newInterval[1], intervals[i][1])
		newInterval[0] = s
		newInterval[1] = e
		i += 1
	}
	// Insert interval.
	ans = append(ans, newInterval)

	// Insert after
	for i < n && newInterval[1] < intervals[i][0] {
		ans = append(ans, intervals[i])
		i += 1
	}

	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
