// Leetcode: 520. Detect Capital.
// https://leetcode.com/problems/detect-capital/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 7.60% of Go online submissions for Detect Capital.
// Memory Usage: 5.5 MB, less than 39.24% of Go online submissions for Detect Capital.
// 2023.01.02 Daily Challenge.
import "regexp"
func detectCapitalUse(word string) bool {
  var small = regexp.MustCompile("^[A-Z]{0,1}[a-z]+$")
  var big = regexp.MustCompile("^[A-Z]+$")
  return small.MatchString(word) || big.MatchString(word)
}
