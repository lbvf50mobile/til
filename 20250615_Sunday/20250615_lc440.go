// Leetcode: 440. K-th Smallest in Lexicographical Order
// https://leetcode.com/problems/k-th-smallest-in-lexicographical-order/description/?envType=daily-question&envId=2025-06-09
// error in 100, 90

package main

func findKthNumber(n int, k int) int {
	// Very similar to backtracking,
	// because of 10 iterations in every recursion, the recursion depth would
	// not be very long, only 10 calls for 10**9.

	step := 0
	for i := 1; i <= 9; i += 1 {
		if step >= k {
			break
		}
		if i > n {
			break
		}
		step += 1
		if k == step {
			return i
		}
		val, ok := rec(i, &step, n, k)
		if ok {
			return val
		}
	}
	panic("no answer")

}

func rec(parent int, step *int, n int, k int) (int, bool) {
	if *step >= k {
		return 0, false
	}
	for i := 0; i <= 9; i += 1 {
		value := parent*10 + i
		if *step >= k {
			return 0, false
		}
		if value > n {
			return 0, false
		}
		*step += 1
		if *step == k {
			return value, true
		}
		val, ok := rec(value, step, n, k)
		if ok {
			return val, true
		}
	}
	panic("cannot find answer")
}
