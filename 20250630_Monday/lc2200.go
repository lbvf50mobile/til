// Leetcode: 2200. Find All K-Distant Indices in an Array
// https://leetcode.com/problems/find-all-k-distant-indices-in-an-array/description/?envType=daily-question&envId=2025-06-24
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func findKDistantIndices(nums []int, key int, k int) []int {
	n := len(nums)
	// Create an answer, that would be n as maximum.
	ans := make([]int, 0, n)
	// Create used to mark used indices.
	u := make([]bool, n)
	// Now iterate over all indicies and values.
	for j, v := range nums {
		// nums[j] == key
		if v != key {
			continue
		}
		// Loop to iterate over indices;
		// |i - j| <= k
		i := j - k
		// To catch the fist element.
		// To avoid stop to early.
		if i < 0 {
			i = 0
		}
		for ; i < n && i <= j+k; i += 1 {
			if u[i] {
				continue
			}
			ans = append(ans, i)
			u[i] = true
		}
	}
	return ans
}
