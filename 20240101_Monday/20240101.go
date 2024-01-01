// Leetcode: 455. Assign Cookies.
// https://leetcode.com/problems/assign-cookies/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 40 ms, faster than 13.45% of Go online submissions for Assign
// Cookies.
// Memory Usage: 6.2 MB, less than 57.14% of Go online submissions for Assign
// Cookies.
// 2024.01.01 Daily Challenge.

package main

import "sort"

func findContentChildren(g []int, s []int) int {
	if 0 == len(s) {
		return 0
	}
	// Sort both slices descending.
	sort.SliceStable(g, func(i, j int) bool {
		return g[i] > g[j]
	})
	sort.SliceStable(s, func(i, j int) bool {
		return s[i] > s[j]
	})
	// Define counter the answer var.
	ans := 0
	// set size pointer to the bigest size.
	p := 0
	n := len(s)
	// Iterate over greeds, if *size-pointer >= g, increase the counter and
	// move a pointer.
	for _, v := range g {
		// If the pointer equal to  greed size stop the loop.
		if n == p {
			break
		}
		if s[p] >= v {
			p += 1
			ans += 1
		}
	}
	// Return answer.
	return ans
}
