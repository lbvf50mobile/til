// Leetcode: 3439. Reschedule Meetings for Maximum Free Time I
// https://leetcode.com/problems/reschedule-meetings-for-maximum-free-time-i/description/?envType=daily-question&envId=2025-07-09
// - - -
// Accpted.
// Thanks God, Jesus Christ!

package main

func maxFreeTime(eventTime int, k int, startTime []int, endTime []int) int {
	n := len(startTime)
	ans := 0
	sum := make([]int, n+1)

	for i, s := range startTime {
		e := endTime[i]
		sum[i+1] = sum[i] + e - s
	}

	for i := k - 1; i < n; i += 1 {
		l, r := 0, 0
		if n-1 == i {
			r = eventTime
		} else {
			r = startTime[i+1]
		}
		if k-1 == i {
			l = 0
		} else {
			l = endTime[i-k]
		}
		ans = max(ans, r-l-(sum[i+1]-sum[i-k+1]))
	}

	return ans

}
