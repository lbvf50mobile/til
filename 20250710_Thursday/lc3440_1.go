// Leetcode: 3440. Reschedule Meetings for Maximum Free Time II
// https://leetcode.com/problems/reschedule-meetings-for-maximum-free-time-ii/description/?envType=daily-question&envId=2025-07-10
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maxFreeTime(eventTime int, startTime []int, endTime []int) int {
	// Core Idea: meetings during evens are blocks. Block could be lift or
	// moved.
	// 1) Lift: rise up a block and put it somewhere in a appropriate gap.
	// 2) Move: just push a block to one end, to encrease the size of a free
	// gap.
	// The solution.
	// 1. Left to right travers, and check do a gap exist to put current
	// block.
	// 2. Rigit to left travers, and chedo do a gap exist to put current
	// block.
	// 3. Left to right travers, and move a block to one end.
	// this Lift, Lift, Move. Check all possbile manipulations to a block,
	// lift-put-left, lift-put-right, just move.

	ans := 0
	n := len(startTime)
	end := eventTime
	s, e := startTime, endTime
	blockLen := func(i int) int {
		return e[i] - s[i]
	}
	freeAfterLift := func(i int) int {
		leftBorder := 0
		rightBorder := end
		if i > 0 {
			leftBorder = e[i-1]
		}
		if i < n-1 {
			rightBorder = s[i+1]
		}
		return rightBorder - leftBorder
	}

	// 1) Left-Right seek plase to LIFT and place.
	prevEnd := 0
	maxLGap := 0
	for i := 0; i < n; i += 1 {
		l := blockLen(i)
		if l <= maxLGap {
			ans = max(freeAfterLift(i), ans)
		}
		curGap := s[i] - prevEnd
		maxLGap = max(curGap, maxLGap)
		prevEnd = e[i]
	}
	// 2) Right-Left seek for a place to Lift and place.
	nextStart := end
	maxRGap := 0
	for i := n - 1; i >= 0; i -= 1 {
		l := blockLen(i)
		if l <= maxRGap {
			ans = max(freeAfterLift(i), ans)
		}
		curGap := nextStart - e[i]
		nextStart = s[i]
		maxRGap = max(curGap, maxRGap)
	}
	// 3) Just move every block.
	for i := 0; i < n; i += 1 {
		l := blockLen(i)
		free := freeAfterLift(i)
		gap := free - l
		ans = max(gap, ans)
	}
	return ans
}
