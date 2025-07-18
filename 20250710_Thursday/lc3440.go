// Leetcode: 3440. Reschedule Meetings for Maximum Free Time II
// https://leetcode.com/problems/reschedule-meetings-for-maximum-free-time-ii/description/?envType=daily-question&envId=2025-07-10
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maxFreeTime(eventTime int, startTime []int, endTime []int) int {
	// I imaging meeting during the item like a bricks, I can move push
	// bricks or I can lift them and put in another postion.
	// Core of the algorihtm: is to find max gap after moving or lifting.
	// 1. Loop defince could I lift a brick and move it to the left.
	// 2. Leep defne could I lift a brick and move in to the right.
	// Both I mart in a liftFlag slice.
	// 3. I calculate maximum gap by moving or lifting.
	end := eventTime
	s, e := startTime, endTime
	n := len(startTime)
	liftFlag := make([]bool, n)

	// 1) Moving from left to right, mark is it possiple bo move a block left.
	leftGap := 0
	for i := 0; i < n; i += 1 {
		var nextGap int
		if 0 == i {
			nextGap = s[i] - 0
		} else {
			nextGap = s[i] - e[i-1]
		}
		l := e[i] - s[i]
		if l <= leftGap {
			liftFlag[i] = true
		}
		leftGap = max(leftGap, nextGap)
	}
	// 2) Movng from right to left, mark if it possible to move block right.
	rightGap := 0
	for j := n - 1; j >= 0; j -= 1 {
		var nextGap int
		if n-1 == j {
			nextGap = end - e[j]
		} else {
			nextGap = s[j+1] - e[j]
		}
		l := e[j] - s[j]
		if l <= rightGap {
			liftFlag[j] = true
		}
		rightGap = max(rightGap, nextGap)
	}
	ans := 0
	// 3) Find maximum between lift and move.
	for i := 0; i < n; i += 1 {
		l := e[i] - s[i]
		var gLeft int
		var gRight int
		// For the most left it is 0.
		// For other it is previous end.
		if 0 == i {
			gLeft = 0
		} else {
			gLeft = e[i-1]
		}
		// For the most right is is end.
		// For others just a beginin of next.
		if n-1 == i {
			gRight = end
		} else {
			gRight = s[i+1]
		}
		move := gRight - gLeft - l
		// Lift only in case if it is possible to lift.
		if liftFlag[i] {
			lift := gRight - gLeft
			good := max(lift, move)
			ans = max(good, ans)
		} else {
			ans = max(move, ans)
		}
	}
	return ans
}
