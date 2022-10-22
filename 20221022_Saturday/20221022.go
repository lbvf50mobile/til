// Leetcode: 58. Length of Last Word.
// https://leetcode.com/problems/length-of-last-word/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Length of Last Word.
// Memory Usage: 2.1 MB, less than 34.00% of Go online submissions for Length of Last Word.
// 20221023;
// https://gist.github.com/lbvf50mobile/cdab719ad843d37385a7bd066a5547c8
// https://leetcode.com/problems/length-of-last-word/discuss/2733430/Go%3A-Two-consecutive-loops.
func lengthOfLastWord(s string) int {
  // Find right most non space symbol.
  j := len(s) - 1
  for ; ' ' == s[j]; j -= 1{ }
  // Find next space moving from j.
  i := j
  for ; 0 <= i && ' ' != s[i]; i -= 1{ }
  return j - i
}
