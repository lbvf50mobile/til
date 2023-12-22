// Leetcode: 1422. Maximum Score After Splitting a String.
// https://leetcode.com/problems/maximum-score-after-splitting-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 83.33% of Go online submissions for Maximum
// Score After Splitting a String.
// Memory Usage: 2.2 MB, less than 90.00% of Go online submissions for Maximum
// Score After Splitting a String.
// 2023.12.22 Daily Challenge.

package main

func maxScore(s string) int {
	n := len(s)
	prefix := make([]int, n)
	suffix := make([]int, n)
	prefix[0] = 1 - int(s[0]-'0') // Count zeros.
	for i := 1; i < n; i += 1 {
		prefix[i] = prefix[i-1] + 1 - int(s[i]-'0')
	}
	suffix[n-1] = int(s[n-1] - '0') // Count ones.
	for j := n - 2; j >= 0; j -= 1 {
		suffix[j] = suffix[j+1] + int(s[j]-'0')
	}
	ans := 0
	for i := 0; i < (n - 1); i += 1 {
		tmp := prefix[i] + suffix[i+1]
		if tmp > ans {
			ans = tmp
		}
	}
	return ans
}
