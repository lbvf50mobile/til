// Leetcode: 1925 Count Square Sum Triples
// https://leetcode.com/problems/count-square-sum-triples/description/

package main

func countTriples(n int) int {
	counter := 0
	for i := 1; i <= n; i += 1 {
		for j := 1; j <= n; j += 1 {
			if bs(i, j, n) {
				counter += 1
			}
		}
	}
	return counter
}

func bs(i, j, n int) bool {
	l, r := 1, n
	for l <= r {
		m := l + (r-l)/2
		if m*m == i*i+j*j {
			return true
		}
		if m*m < i*i+j*j {
			l = m + 1
		} else {
			r = m - 1
		}
	}
	return false
}
