// Leetcode: 1925 Count Square Sum Triples
// https://leetcode.com/problems/count-square-sum-triples/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func countTriples(n int) int {
	counter := 0
	sq := make(map[int]bool)
	for i := 1; i <= n; i += 1 {
		tmp := i * i
		sq[tmp] = true
	}
	for i := 1; i <= n; i += 1 {
		for j := 1; j <= n; j += 1 {
			if 1 == i && i == j {
				continue
			}
			if sq[i*i+j*j] {
				counter += 1
			}
		}
	}
	return counter
}
