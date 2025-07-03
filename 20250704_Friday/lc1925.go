// Leetcode: 1925 Count Square Sum Triples
// https://leetcode.com/problems/count-square-sum-triples/description/

package main


func countTriples(n int) int {
	counter := 0
	for i := 1; i <= n; i += 1 {
		for j := 1 ; j <= n; j += 1 {
			for k :=  1; k <= n; k += 1 {
				if k*k == j*j+i*i {
					counter += 1
				}
			}
		}
	}
	return counter
}
