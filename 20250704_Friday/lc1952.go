// Leetcode: 1952. Three Divisors
// https://leetcode.com/problems/three-divisors/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func isThree(n int) bool {
	// In other words: Is not Prime?
	// and what about 9?
	// 1, 3, 9
	// but 12 is not an answer.

	count := 1

	for i := 2; i <= n; i += 1 {
		if 0 == n%i {
			count += 1
		}
	}
	return 3 == count
}
