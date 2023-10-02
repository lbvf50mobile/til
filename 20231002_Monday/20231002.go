// Leetcode: 2038. Remove Colored Pieces if Both Neighbors are the Same Color.
// https://leetcode.com/problems/remove-colored-pieces-if-both-neighbors-are-the-same-color
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 13 ms, faster than 54.55% of Go online submissions for Remove
// Colored Pieces if Both Neighbors are the Same Color.
// Memory Usage: 6.3 MB, less than 100.00% of Go online submissions for Remove
// Colored Pieces if Both Neighbors are the Same Color.
// 2023.10.02 Daily Challenge.
package main

func winnerOfGame(colors string) bool {
	c := colors
	a,b := 0, 0
	n := len(colors)
	var x,y,z byte
	for i := 1; i < n-1; i += 1 {
		x,y,z = c[i-1], c[i], c[i+1]
		if 65 == x && 65 == y && 65 == z {
			a += 1
			continue
		}
		if 66 == x && 66 == y && 66 == z {
			b += 1
			continue
		}
	}
	return a > b
}
