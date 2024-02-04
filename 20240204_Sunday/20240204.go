// Leetcode: 76. Minimum Window Substring.
// https://leetcode.com/problems/minimum-window-substring/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Minimum
// Window Substring.
// Memory Usage: 3 MB, less than 97.34% of Go online submissions for Minimum
// Window Substring.
// 2024.02.04 Daily Challenge.

package main

import "fmt"

var p = fmt.Println

func minWindow(s string, t string) string {
	// Clarification.
	needle := t
	stack := s
	pattern := getPattern(needle)
	test := getPattern(stack[:1])
	if len(stack) < len(needle) {
		return ""
	}
	pair := []int{-1, -1}
	min := 10_000_000_000
	if 1 == len(needle) && one(int(needle[0]), stack) {
		return needle
	}
	i, j := 0, 1
	for j = 1; j <= len(stack); j += 1 {
		for valid(test, pattern) {
			if (j - i) < min {
				min = (j - i)
				pair[0], pair[1] = i, j
			}
			reset(test, int(stack[i]))
			i += 1
		}
		if j < len(stack) {
			set(test, int(stack[j]))
		}
	}

	// ------- Return
	if -1 == pair[0] && -1 == pair[1] {
		return ""
	}
	return stack[pair[0]:pair[1]]
}

func one(n int, stack string) bool {
	for _, v := range stack {
		if n == int(v) {
			return true
		}
	}
	return false
}

func getPattern(s string) []int {
	ans := make([]int, 52)
	for _, v := range s {
		x := int(v)
		if 97 <= x && x <= 122 {
			ans[int(v-'a')] += 1
		} else {
			ans[26+int(v-'A')] += 1
		}
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

func set(cnt []int, ch int) {
	if 97 <= ch && ch <= 122 {
		cnt[int(ch-'a')] += 1
	} else {
		cnt[26+int(ch-'A')] += 1
	}
}
func reset(cnt []int, ch int) {
	if 97 <= ch && ch <= 122 {
		cnt[int(ch-'a')] -= 1
	} else {
		cnt[26+int(ch-'A')] -= 1
	}
}
