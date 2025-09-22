// Leetcode: 3005. Count Elements With Maximum Frequency
// https://leetcode.com/problems/count-elements-with-maximum-frequency/description/?envType=daily-question&envId=2025-09-22
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maxFrequencyElements(nums []int) int {
	f := make(map[int]int)
	mx := 0
	for _, v := range nums {
		if _, ok := f[v]; ok {
			f[v] += 1
		} else {
			f[v] = 1
		}
		mx = max(mx, f[v])
	}
	count := 0
	for _, v := range f {
		if mx == v {
			count += mx
		}
	}
	return count
}
