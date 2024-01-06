// Leetcode: 1235. Maximum Profit in Job Scheduling.
// https://leetcode.com/problems/maximum-profit-in-job-scheduling/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 119 ms, faster than 68.75% of Go online submissions for Maximum
// Profit in Job Scheduling.
// Memory Usage: 12.5 MB, less than 46.88% of Go online submissions for
// Maximum Profit in Job Scheduling.
// 2024.01.06 Daily Challenge.

package main

import "sort"

type Job struct {
	start  int
	finish int
	profit int
}

var jobs []*Job
var n int

func jobScheduling(startTime []int, endTime []int, profit []int) int {
	// Based on:
	// https://leetcode.com/problems/maximum-profit-in-job-scheduling/discuss/408957/DP%2BBinary-search-(Java)
	n = len(startTime)
	jobs = make([]*Job, n)
	for i := 0; i < n; i += 1 {
		jobs[i] = &Job{startTime[i], endTime[i], profit[i]}
	}
	return scheduleApt()
}

func scheduleApt() int {
	sort.SliceStable(jobs, func(i, j int) bool {
		return jobs[i].finish < jobs[j].finish
	})
	dp := make([]int, n)
	dp[0] = jobs[0].profit
	for i := 1; i < n; i += 1 {
		prf := jobs[i].profit
		l := search(i)
		if -1 != l {
			prf += dp[l]

		}
		dp[i] = max(prf, dp[i-1])
	}
	return dp[n-1]
}

func search(i int) int {
	st, fn := 0, i-1
	for st <= fn {
		mid := st + (fn-st)/2
		if jobs[mid].finish <= jobs[i].start {
			if jobs[mid+1].finish <= jobs[i].start {
				st = mid + 1
			} else {
				return mid
			}
		} else {
			fn = mid - 1
		}
	}
	return -1
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
