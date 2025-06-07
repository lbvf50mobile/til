// Leetcode: 386. Lexicographical Numbers
// https://leetcode.com/problems/lexicographical-numbers/description/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

func lexicalOrder(n int) []int {
	// Idea: It is a backTracking
	ans := make([]int, n)
	index := 0
	// This loop because of start from 1.
	for i := 1; i <= 9; i += 1 {
		if i > len(ans) {
			break
		}
		ans[index] = i
		index += 1
		bt(i, &index, ans)
	}
	return ans
}

func bt(prev int, index *int, ans []int) {
	if prev > len(ans) {
		return
	}
	for i := 0; i <= 9; i += 1 {
		cur := prev*10 + i
		if cur > len(ans) {
			return
		}
		ans[*index] = cur
		*index += 1
		bt(cur, index, ans)
	}
}
