// Leetcode: 997. Find the Town Judge.
// https://leetcode.com/problems/find-the-town-judge/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 86 ms, faster than 52.83% of Go online submissions for Find the
// Town Judge.
// Memory Usage: 8 MB, less than 5.66% of Go online submissions for Find the
// Town Judge.
// 2024.02.22 Daily Challenge.

package main

type resident struct {
	trusts    int
	trustedBy int
}

func findJudge(n int, trust [][]int) int {
	m := len(trust)
	if m < (n - 1) {
		return -1
	}
	if 1 == n && 0 == m {
		return 1
	}
	h := make(map[int]*resident)
	ans := -1
	for _, v := range trust {
		t, tb := v[0], v[1] // One who trusts, one who trusted by.
		if nil == h[t] {
			h[t] = &resident{}
		}
		if nil == h[tb] {
			h[tb] = &resident{}
		}
		h[t].trusts += 1
		h[tb].trustedBy += 1
		if 0 == h[tb].trusts && (n-1) == h[tb].trustedBy {
			ans = tb
		}
	}
	if -1 == ans {
		return ans
	}
	if 0 == h[ans].trusts && (n-1) == h[ans].trustedBy {
		return ans
	}
	return -1
}
