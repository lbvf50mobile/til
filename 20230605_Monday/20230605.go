// Leetcode: 1232. Check If It Is a Straight Line.
// https://leetcode.com/problems/check-if-it-is-a-straight-line/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 50.00% of Go online submissions for Check If It Is
// a Straight Line.
// Memory Usage: 3.6 MB, less than 34.21% of Go online submissions for Check If
// It Is a Straight Line.
// 2023.06.05 Daily Challenge.
package main

func gdx(a, b []int) int {
	return b[0] - a[0]
}
func gdy(a, b []int) int {
	return b[1] - a[1]
}
func checkStraightLine(coordinates [][]int) bool {
	c := coordinates
	dx := gdx(c[0], c[1])
	dy := gdy(c[0], c[1])
	for i := 2; i < len(c); i += 1 {
		one := dx * gdy(c[0], c[i])
		two := dy * gdx(c[0], c[i])
		if one != two {
			return false
		}
	}
	return true

}
