// Leetcode: 2011. Final Value of Variable After Performing Operations
// https://leetcode.com/problems/final-value-of-variable-after-performing-operations/description/

package main

func finalValueAfterOperations(operations []string) int {
	x := 0
	for _, o := range operations {
		if '-' == o[0] || '-' == o[2] {
			x -= 1
		}
		if '+' == o[0] || '+' == o[2] {
			x += 1
		}
	}
	return x

}
