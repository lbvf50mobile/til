// Leetcode: 1979. Find Greatest Common Divisor of Array
// https://leetcode.com/problems/find-greatest-common-divisor-of-array/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import "slices"

func findGCD(nums []int) int {
	a, b := slices.Min(nums), slices.Max(nums)
	// https://www.programiz.com/c-programming/examples/hcf-gcd
	// If x divides a and b, then x divides a-b.
	for a != b {
		if a > b {
			a = a - b
		} else {
			b = b - a
		}
	}
	return a
}
