// Leetcode: 930. Binary Subarrays With Sum.
// https://leetcode.com/problems/binary-subarrays-with-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 33 ms, faster than 35.48% of Go online submissions for Binary
// Subarrays With Sum.
// Memory Usage: 7.9 MB, less than 12.90% of Go online submissions for Binary
// Subarrays With Sum.
// 2024.03.14 Daily Challenge.

package main

// import "fmt"
// var p = fmt.Println

func numSubarraysWithSum(nums []int, goal int) int {
	// Hint here.
	// https://leetcode.com/problems/binary-subarrays-with-sum/solution/
	h := make(map[int]int)
	ans := 0
	currSum := 0
	for _, v := range nums {
		currSum += v
		prevSum := currSum - goal // Here!
		if goal == currSum {
			ans += 1
		}
		ans += h[prevSum]
		h[currSum] += 1
	}
	return ans
}
