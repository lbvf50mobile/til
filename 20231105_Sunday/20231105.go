// Leetcode: 1535. Find the Winner of an Array Game.
// https://leetcode.com/problems/find-the-winner-of-an-array-game
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 91 ms, faster than 78.57% of Go online submissions for Find the
// Winner of an Array Game.
// Memory Usage: 12.9 MB, less than 7.14% of Go online submissions for Find the
// Winner of an Array Game.
// 2023.11.05 Daily Challenge.

package main

func getWinner(arr []int, k int) int {
	// Based on:
	// https://leetcode.com/problems/find-the-winner-of-an-array-game/solution/
	max := getMax(arr)
	curr := arr[0]
	winstreak := 0
	queue := make([]int, len(arr)-1)
	copy(queue, arr[1:])
	for 0 < len(queue) {
		opponent := queue[0]
		queue = queue[1:]
		if curr > opponent {
			queue = append(queue, opponent)
			winstreak += 1
		} else {
			queue = append(queue, curr)
			curr = opponent
			winstreak = 1
		}
		if winstreak == k || curr == max {
			return curr
		}
	}
	return -1
}

func getMax(x []int) int {
	ans := x[0]
	for _, v := range x {
		if v > ans {
			ans = v
		}
	}
	return ans
}
