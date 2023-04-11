// Leetcode: 2390. Removing Stars From a String.
// https://leetcode.com/problems/removing-stars-from-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 39 ms, faster than 40.74% of Go online submissions for Removing
// Stars From a String.
// Memory Usage: 8.6 MB, less than 37.04% of Go online submissions for Removing
// Stars From a String.
// 2023.04.11 Daily Challenge.
func removeStars(s string) string {
	stack := []rune("")
	for _, x := range s {
		if '*' == x {
			stack = stack[0 : len(stack)-1]
		} else {
			stack = append(stack, x)
		}
	}
	return string(stack)
}
