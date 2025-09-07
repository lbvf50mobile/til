// Leetcode: 1304. Find N Unique Integers Sum up to Zero
//# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/description/?envType=daily-question&envId=2025-09-07
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func sumZero(n int) []int {
	ans := make([]int, 0)
	half := n / 2
	if 1 == n%2 {
		ans = append(ans, 0)
		half = (n - 1) / 2
	}
	for i := 1; i <= half; i += 1 {
		ans = append(ans, i, -i)
	}
	return ans
}
