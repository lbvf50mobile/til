// Leetcode: 28. Find the Index of the First Occurrence in a String.
// https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 18.41% of Go online submissions for Find the Index of the First Occurrence in a String.
// Memory Usage: 2 MB, less than 36.04% of Go online submissions for Find the Index of the First Occurrence in a String.
// 2023.03.03 Daily Challenge.
import "strings"
func strStr(haystack string, needle string) int {
  return strings.Index(haystack, needle)
}
