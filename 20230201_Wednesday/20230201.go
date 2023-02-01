// Leetcode: 1071. Greatest Common Divisor of Strings.
// https://leetcode.com/problems/greatest-common-divisor-of-strings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 624 ms, faster than 6.25% of Go online submissions for Greatest Common Divisor of Strings.
// Memory Usage: 8.5 MB, less than 6.25% of Go online submissions for Greatest Common Divisor of Strings.
// 2023.02.01 Daily Challenge.
import "regexp"
func gcdOfStrings(str1 string, str2 string) string {
  var min string
  if len(str1) < len(str2) {
    min = str1
  } else {
    min = str2
  }
  for i := len(min); i >= 1; i -= 1{
    substr := min[0:i]
    r, _ := regexp.Compile("^(" + substr +")+$");
    if r.MatchString(str1) && r.MatchString(str2){
      return substr
    }
  }
  return ""
}
