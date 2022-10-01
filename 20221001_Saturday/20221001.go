// Leetcode: 91. Decode Ways.
// https://leetcode.com/problems/decode-ways/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 12.16% of Go online submissions for Decode Ways.
// Memory Usage: 2 MB, less than 45.59% of Go online submissions for Decode Ways.
import "strconv"
func numDecodings(s string) int {
  dp := make([]int, len(s) + 1)
  dp[0] = 1 // One way to reach the first digit.
  for i :=0 ; i < len(s) ; i += 1{
    if '0' == s[i] {continue}
    if i < (len(s)-1){
      // https://stackoverflow.com/a/29841190/8574922
      num, _ := strconv.ParseInt(s[i:i+2], 10, 32) 
      if num >= 10 && num <= 26{
        dp[i+2] += dp[i]
      }
    }
    dp[i+1] += dp[i]
  }
  return dp[len(s)]
}
