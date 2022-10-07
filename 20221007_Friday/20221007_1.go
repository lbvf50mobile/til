// Leetcode: 14. Longest Common Prefix.
// https://leetcode.com/problems/longest-common-prefix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 51.49% of Go online submissions for Longest Common Prefix.
// Memory Usage: 2.4 MB, less than 54.17% of Go online submissions for Longest Common Prefix.
// https://leetcode.com/problems/longest-common-prefix/discuss/2673956/Go%3A-Two-loops.
// https://gist.github.com/lbvf50mobile/59fb8f286bc292c0d2af359c00c0a9d2
func longestCommonPrefix(strs []string) string {
    answer := ""
    for i := 0; i <= 200; i += 1{
      // take char from the first string.
      var x string
      if i < len(strs[0]) {
        x = string(strs[0][i])
      } else {
        return answer
      }
      // Check rest of the strings have the same char at
      // the same postion.
      for j := 1; j < len(strs); j += 1{
        if i < len(strs[j]) && x == string(strs[j][i]) {
          ;
        } else {
          return answer
        }
      }
      answer += x
    }
    return answer
}
