// Leetcode: 1220. Count Vowels Permutation.
// https://leetcode.com/problems/count-vowels-permutation
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 50.00% of Go online submissions for Count Vowels
// Permutation.
// Memory Usage: 1.9 MB, less than 50.00% of Go online submissions for Count
// Vowels Permutation.
// 2023.10.28 Daily Challenge.
package main

func countVowelPermutation(n int) int {
	curr, nxt := 0, 1
	mod := 1000000007
	a, e, i, o, u := 0, 1, 2, 3, 4
	dp := [][]int{{1, 1, 1, 1, 1}, {0, 0, 0, 0, 0}}
	steps := n - 1
	for cntr := 0; cntr < steps; cntr += 1 {
		// Each vowel 'a' may only be followed by an 'e'.
		dp[nxt][e] = (dp[nxt][e] + dp[curr][a]) % mod
		// Each vowel 'e' my only be followed by 'a' or an 'i'.
		dp[nxt][i] = (dp[nxt][i] + dp[curr][e]) % mod
		dp[nxt][a] = (dp[nxt][a] + dp[curr][e]) % mod
		// Each vowel 'i' may not be followed by 'i'.
		dp[nxt][a] = (dp[nxt][a] + dp[curr][i]) % mod
		dp[nxt][e] = (dp[nxt][e] + dp[curr][i]) % mod
		dp[nxt][o] = (dp[nxt][o] + dp[curr][i]) % mod
		dp[nxt][u] = (dp[nxt][u] + dp[curr][i]) % mod
		// Each vowel 'o' may be followed by 'i' or a 'u'.
		dp[nxt][i] = (dp[nxt][i] + dp[curr][o]) % mod
		dp[nxt][u] = (dp[nxt][u] + dp[curr][o]) % mod
		// Each vowel 'u' my be follewed by 'a'.
		dp[nxt][a] = (dp[nxt][a] + dp[curr][u]) % mod
		if 0 == curr {
			curr, nxt = 1, 0
		} else {
			curr, nxt = 0, 1
		}
		for j := 0; j < 5; j += 1 {
			dp[nxt][j] = 0
		}
	}
	ans := 0
	for i := 0; i < 5; i += 1 {
		ans = (ans + dp[curr][i]) % mod
	}
	return ans
}
