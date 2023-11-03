// Leetcode: 1441. Build an Array With Stack Operations.
// https://leetcode.com/problems/build-an-array-with-stack-operations/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 78.26% of Go online submissions for Build an Array
// With Stack Operations.
// Memory Usage: 2.4 MB, less than 47.83% of Go online submissions for Build an
// Array With Stack Operations.
// 2023.11.03 Daily Challenge.
package main

var ans []string

func buildArray(target []int, n int) []string {
	// Based on the Leetcode's solution:
	// https://leetcode.com/problems/build-an-array-with-stack-operations/solution/
	ans = make([]string, 0)
	i := 0
	for _, num := range target {
		for i < num-1 {
			push()
			pop()
			i += 1
		}
		push()
		i += 1
	}
	return ans

}

func push() {
	ans = append(ans, "Push")
}
func pop() {
	ans = append(ans, "Pop")
}
