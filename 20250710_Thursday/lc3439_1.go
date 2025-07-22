// Leetcode: 3439. Reschedule Meetings for Maximum Free Time I
// https://leetcode.com/problems/reschedule-meetings-for-maximum-free-time-i/description/?envType=daily-question&envId=2025-07-09

package main

import "fmt"
var p = fmt.Println

func maxFreeTime(eventTime int, k int, startTime []int, endTime []int) int {
	// It is a sliding window of fixed size.
	// Main Ideas: As many blocks you push one side, as many freespace would
	// be on another side.
	// Solution in three to loops.
	// 1) Loop acquire k elements of sliding window (grow).
	// 2) Move sliding window to the right (move).
	s, e := startTime, endTime
	n := len(startTime)
	end := eventTime

	leftB := func(i int) int {
		if 0 == i {
			return 0
		}
		return e[i-1]
	}
	rightB := func(i int) int {
		if (n - 1) == i {
			return end
		}
		return s[i+1]
	}
	sizeB := func(i int) int {
		return e[i] - s[i]
	}

	// Set first windows as one element.
	sum := sizeB(0)
	l, r := 0, 0
	maxFree := rightB(r) - leftB(l) - sum
	p("size 0", maxFree)
	// 1) Grow sliding widnows.
	// Only right border moves.
	for i := 1; i < k && i < n; i += 1 {
		sum += sizeB(i)
		r += 1
		free := rightB(r) - leftB(l) - sum
		maxFree = max(free, maxFree)
		p("Grow", free)
	}
	// 2) Move sliding window.
	// Rigth and left border moves.
	for i := k; i < n; i += 1 {
		p("------")
		p("Begin sum", sum)
		p("Sum to delete", sizeB(l))
		p("Sum to add", sizeB(i))
		sum -= sizeB(l)
		sum += sizeB(i)
		p("Result sum", sum)
		l, r := l+1, r+1
		p("l,r",l,r)
		p("leftB", leftB(l))
		p("rightB", rightB(r))
		free := rightB(r) - leftB(l) - sum
		maxFree = max(free, maxFree)
		p("Move", free)
	}
	return maxFree
}
