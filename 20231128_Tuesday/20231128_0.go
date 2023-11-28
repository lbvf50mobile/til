// Leetcode: 2147. Number of Ways to Divide a Long Corridor.
// https://leetcode.com/problems/number-of-ways-to-divide-a-long-corridor/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 499 ms, faster than 33.33% of Go online submissions for Number of
// Ways to Divide a Long Corridor.
// Memory Usage: 35.1 MB, less than 33.33% of Go online submissions for Number
// of Ways to Divide a Long Corridor.
// 2023.11.28 Daily Challenge.
package main

var mod = 1_000_000_007
var cache [][]int
var cor string
var n int

func numberOfWays(corridor string) int {
	// Based on the first Leetcode's solution.
	n = len(corridor)
	cor = corridor
	cache = make([][]int, n)
	for i := 0; i < n; i += 1 {
		cache[i] = []int{-1, -1, -1}
	}
	return count(0, 0)

}

func count(i, s int) int {
	if n == i {
		if 2 == s {
			return 1
		} else {
			return 0
		}
	}
	if -1 != cache[i][s] {
		return cache[i][s]
	}
	res := 0
	if 2 == s {
		if 'S' == cor[i] {
			res = count(i+1, 1)
		} else {
			res = (count(i+1, 0) + count(i+1, 2)) % mod
		}
	} else {
		if 'S' == cor[i] {
			res = count(i+1, s+1)
		} else {
			res = count(i+1, s)
		}
	}
	cache[i][s] = res
	return res
}
