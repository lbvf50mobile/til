// Leetcode: 930. Binary Subarrays With Sum.
// https://leetcode.com/problems/binary-subarrays-with-sum/

package main

import "fmt"
var p = fmt.Println

func numSubarraysWithSum(nums []int, goal int) int {
	// curr_sum - prev_sum = goal
	// curr_sum - goal = prav_sum
	// Take look prev_sum
	h := make(map[int]int)
	h[0] = 1
	ans := 0
	currSum := 0
	for i, v := range nums {
		currSum += v
		prevSum := goal - currSum
		p(i,currSum, prevSum, h[prevSum])
		ans += h[prevSum]
		h[currSum] += 1
	}
	return ans
}
