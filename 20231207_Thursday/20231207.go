// Leetcode: 1903. Largest Odd Number in String.
// https://leetcode.com/problems/largest-odd-number-in-string
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 14 ms, faster than 14.29% of Go online submissions for Largest Odd
// Number in String.
// Memory Usage: 6.5 MB, less than 77.92% of Go online submissions for Largest
// Odd Number in String.
// 2023.12.07 Daily Challenge.

package main

func largestOddNumber(num string) string {
	left := 0
	right := -1
	// Left must be not zero.
	for i, v := range num {
		if '0' != v {
			left = i
			break
		}
	}
	// Right must be 1,3,5,7,9.
	for i := len(num) - 1; i >= 0; i -= 1 {
		if yes(num[i]) {
			right = i
			break
		}
	}
	if left > right {
		return ""
	}
	return num[left : right+1]
}

func yes(x byte) bool {
	switch x {
	case '1':
		return true
	case '3':
		return true
	case '5':
		return true
	case '7':
		return true
	case '9':
		return true
	default:
		return false
	}
}
