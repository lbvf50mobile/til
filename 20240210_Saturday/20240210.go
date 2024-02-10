// Leetcode: 647. Palindromic Substrings.
// https://leetcode.com/problems/palindromic-substrings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 70.00% of Go online submissions for Palindromic
// Substrings.
// Memory Usage: 2 MB, less than 92.73% of Go online submissions for
// Palindromic Substrings.
// 2024.02.10 Daily Challenge.

package main

var str string
var n int

func countSubstrings(s string) int {
	// Like a diverging circles.
	// Hint from:
	// https://leetcode.com/problems/palindromic-substrings/discuss/105689/Java-solution-8-lines-extendPalindrome
	str = s
	n = len(str)
	ans := 0
	for i, _ := range str {
		// Odd size;
		ans += pCounter(i, i)
		// Even size;
		ans += pCounter(i, i+1)
	}
	return ans
}

func pCounter(i, j int) int {
	ans := 0
	for 0 <= i && j < n && str[i] == str[j] {
		ans += 1
		i -= 1
		j += 1
	}
	return ans
}
