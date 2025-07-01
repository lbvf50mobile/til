// 3442. Maximum Difference Between Even and Odd Frequency I
// https://leetcode.com/problems/maximum-difference-between-even-and-odd-frequency-i/description/?envType=daily-question&envId=2025-06-10
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maxDifference(s string) int {
	// Count frex
	freq := make([]int, 26)
	getFreq(s, &freq)
	return maxOdd(&freq) - minEven(&freq)
}

func getFreq(s string, freq *[]int) {
	var f []int
	f = *freq
	for _, c := range s {
		f[c-'a'] += 1
	}
}

func maxOdd(freq *[]int) int {
	var f = *freq
	max := 0
	for _, x := range f {
		if 1 == x%2 {
			if max < x {
				max = x
			}
		}
	}
	return max
}

func minEven(freq *[]int) int {
	var f = *freq
	min := 0
	for _, x := range f {
		if x == 0 {
			continue
		}
		if 0 == x%2 {
			if 0 == min || min > x {
				min = x
			}
		}
	}
	return min
}
