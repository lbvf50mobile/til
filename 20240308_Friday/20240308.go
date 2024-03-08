// Leetcode: 3005. Count Elements With Maximum Frequency.
// https://leetcode.com/problems/count-elements-with-maximum-frequency/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Count
// Elements With Maximum Frequency.
// Memory Usage: 2.5 MB, less than 60.12% of Go online submissions for Count
// Elements With Maximum Frequency.
// 2024.03.08 Daily Challenge.

package main

func maxFrequencyElements(nums []int) int {
	h := make(map[int]int)
	max := 0
	// Make feq. Get max.
	for _, v := range nums {
		h[v] += 1
		tmp := h[v]
		if tmp > max {
			max = tmp
		}
	}
	ans := 0
	for _, v := range h {
		if v == max {
			ans += max
		}

	}
	return ans
}
