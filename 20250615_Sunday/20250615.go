// Leetcode: 386. Lexicographical Numbers
// https://leetcode.com/problems/lexicographical-numbers/description/?envType=daily-question&envId=2025-06-08
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

func lexicalOrder(n int) []int {
	// Looks like backtracking, calling recursion function
	// with a couple of pointers.
	index := 0 // pointer in a slice.
	ans := make([]int, n)
	for i := 1; i <= 9; i += 1 {
		if i > n {
			break
		}
		ans[index] = i
		index += 1
		rec(i, &index, ans, n)
	}
	return ans
}

func rec(parent int, index *int, ans []int, n int) {
	for i := 0; i <= 9; i += 1 {
		value := parent*10 + i
		if value > n {
			return
		}
		ans[*index] = value
		*index += 1
		rec(value, index, ans, n)
	}
}
