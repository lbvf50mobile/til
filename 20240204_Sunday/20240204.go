// Leetcode: 76. Minimum Window Substring.
// https://leetcode.com/problems/minimum-window-substring/

package main

import "fmt"
var p = fmt.Println

func minWindow(s string, t string) string {
	if len(s) < len(t) {
		return ""
	}
	// ------ Preparation.
	min := 10_000_000_0
	pair := []int{-1, -1}
	pattern := getPattern(s)
	test := getPattern(string(t[0]))
	i, j := 0, 1
	for j < len(t) {
		if valid(test, pattern) {
			// Save
			if (j - i) == 1 {
				return s
			}
			if (j - i) < min {
				min = (j - i)
				pair[0], pair[1] = i, j
			}
			// Shrink.
			resetCounter(test, int(t[i]))
			i += 1
			// Case i == j.
			if i == j {
				j += 1
				if i < len(t) {
					setCounter(test, int(t[i]))
				}
			}
		} else {
			j += 1
			if j < len(t) {
				setCounter(test, int(t[j]))
			}
		}
	}

	// ------- Return
	if -1 == pair[0] && -1 == pair[1] {
		return ""
	}
	return t[pair[0]:pair[1]]
}

func getPattern(s string) []int {
	ans := make([]int, 26)
	for _, v := range s {
		ans[int(v-'a')] += 1
	}
	return ans
}

func valid(test, pattern []int) bool {
	for i, v := range pattern {
		if test[i] < v {
			return false
		}
	}
	return true
}

func setCounter(cnt []int, ch int) {
	cnt[int(ch-'a')] += 1
}
func resetCounter(cnt []int, ch int) {
	cnt[int(ch-'a')] -= 1
}
