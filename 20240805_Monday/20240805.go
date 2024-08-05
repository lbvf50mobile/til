// Leetcode: 2053. Kth Distinct String in an Array.
// https://leetcode.com/problems/kth-distinct-string-in-an-array/ package main
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 85.71% of Go online submissions for Kth Distinct
// String in an Array.
// Memory Usage: 6 MB, less than 31.43% of Go online submissions for Kth
// Distinct String in an Array.

// package main

func kthDistinct(arr []string, k int) string {
	// 1. Create a counter.
	counterMap := createCounter(arr)
	counterUnic := 0

	// 2. Iterate, find k word with the value 1.
	for _, v := range arr {
		if 1 == counterMap[v] {
			counterUnic += 1
		}
		if k == counterUnic {
			return v
		}
	}

	// 3. And return "" if there is no such word.
	return ""
}

func createCounter(arr []string) map[string]int {
	ans := make(map[string]int)
	for _, v := range arr {
		ans[v] += 1
	}
	return ans
}
