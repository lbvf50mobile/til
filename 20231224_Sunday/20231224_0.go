// Leetcode: 1758. Minimum Changes To Make Alternating Binary String.
// https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 15.87% of Go online submissions for Minimum
// Changes To Make Alternating Binary String.
// Memory Usage: 2.5 MB, less than 98.41% of Go online submissions for Minimum
// Changes To Make Alternating Binary String.
// 2023.12.24 Daily Challenge.

package main

func minOperations(s string) int {
	zerosFirst := zerosAtEvenOperations(s)
	onesFirst := onesAtEvenOperations(s)
	if zerosFirst < onesFirst {
		return zerosFirst
	}
	return onesFirst
}

// Number of changes to reach the 0101 format.
func zerosAtEvenOperations(s string) int {
	ans := 0
	for i, v := range s {
		if 0 == i%2 && '0' != v {
			ans += 1
		}
		if 1 == i%2 && '1' != v {
			ans += 1
		}
	}
	return ans
}

// Number of changes to reach the 1010 format.
func onesAtEvenOperations(s string) int {
	ans := 0
	for i, v := range s {
		if 0 == i%2 && '1' != v {
			ans += 1
		}
		if 1 == i%2 && '0' != v {
			ans += 1
		}
	}
	return ans
}
