// Leetcode: 3423. Maximum Difference Between Adjacent Elements in a Circular Array
// https://leetcode.com/problems/maximum-difference-between-adjacent-elements-in-a-circular-array/description/?envType=daily-question&envId=2025-06-12
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maxAdjacentDistance(nums []int) int {
	n := len(nums)
	ans := 0
	for i, x := range nums {
		j := index(n, i-1)
		y := nums[j]
		tmp := abs(x - y)
		ans = max(tmp, ans)
	}
	return ans
}

func index(n, i int) int {
	if i < 0 {
		return n + i
	} else {
		return i % n
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
