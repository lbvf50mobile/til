// Leetcode: 1503. Last Moment Before All Ants Fall Out of a Plank.
// https://leetcode.com/problems/last-moment-before-all-ants-fall-out-of-a-plank/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 19 ms, faster than 62.50% of Go online submissions for Last Moment
// Before All Ants Fall Out of a Plank.
// Memory Usage: 6.5 MB, less than 75.00% of Go online submissions for Last
// Moment Before All Ants Fall Out of a Plank.
// 2023.11.04 Daily Challenge.
package main

func getLastMoment(n int, left []int, right []int) int {
	// If two ants change direction when they mean that means NOTHING for the
	// problem. It is the same if they keep wallking without any noticing each
	// other. Because time they reach the ends would be the same, only changes
	// the aint who reachs an edge.
	ans := 0

	// Ones moving left. Their path till the end would be equal to their start
	// position. If ant's poistion is 0 it needs to go 0 secons, if 1 then 1.
	// Selecting max.
	for _, v := range left {
		if ans < v {
			ans = v
		}
	}

	// Ones moving right. Their path equla total length minus postion, if total
	// lenght is 5 ant's position is 0 the path is 5 - 0 = 5, and if ant's
	// poistion is 5 then it alreayd reached the end.
	for _, v := range right {
		tmp := n - v
		if ans < tmp {
			ans = tmp
		}
	}
	return ans
}
