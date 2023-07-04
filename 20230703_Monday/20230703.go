// Leetcode: 859. Buddy Strings.
// https://leetcode.com/problems/buddy-strings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Buddy
// Strings.
// Memory Usage: 2.4 MB, less than 100.00% of Go online submissions for Buddy
// Strings.
// 2023.07.04 Updated.
package main

func buddyStrings(s string, goal string) bool {
	sl, gl := len(s), len(goal)
	if sl != gl {
		return false
	}
	if sl < 2 {
		return false
	}
	a, b := make([]rune, 2), make([]rune, 2)
	counter := 0
	dup := false
	h := make(map[rune]int, 0)
	for i, sv := range s {
		if counter > 2 {
			return false
		}
		if byte(sv) != goal[i] {
			counter += 1
			if counter <= 2 {
				a[counter-1] = sv
				b[counter-1] = rune(goal[i])
			}
		} else {
			h[sv] += 1
			if 2 == h[sv] {
				dup = true
			}
		}
	}
	if dup && 0 == counter {
		return true
	}
	if 2 != counter {
		return false
	}
	if a[1] == b[0] && b[1] == a[0] {
		return true
	}
	return false
}
