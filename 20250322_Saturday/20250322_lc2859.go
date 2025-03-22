// 2859. Sum of Values at Indices With K Set Bits
// https://leetcode.com/problems/sum-of-values-at-indices-with-k-set-bits/description/
// Accepted.
// Thanks God, Jesus Christ!

package main

func sumIndicesWithKSetBits(nums []int, k int) int {
	sum := 0
	for i, v := range nums {
		if bytesN(i) == k {
			sum += v
		}
	}
	return sum
}

func bytesN(a int) int {
	ans := 0
	for a != 0 {
		if 1 == a%2 {
			ans += 1
		}
		a = a >> 1
	}
	return ans
}
