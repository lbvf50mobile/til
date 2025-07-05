// Leetcode: 1945. Sum of Digits of String After Convert
// https://leetcode.com/problems/sum-of-digits-of-string-after-convert/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func getLucky(s string, k int) int {
	// Combine first transfrom with sum.
	sum := s2sum(s)

	// First summing of digits was in s2sum, that's wy k-1.
	for i := 0; i < k-1; i += 1 {
		sum = reSum(sum)
	}
	return sum
}

// Combine first transfrom with sum.
func s2sum(s string) int {
	sum := 0
	for _, v := range s {
		digit := v - 'a' + 1
		sum += int(digit / 10)
		sum += int(digit % 10)
	}
	return sum
}

func reSum(x int) int {
	sum := 0
	for x > 0 {
		sum += x % 10
		x /= 10
	}
	return sum
}
