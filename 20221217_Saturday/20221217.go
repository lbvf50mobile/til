// Leetcode: 150. Evaluate Reverse Polish Notation.
// https://leetcode.com/problems/evaluate-reverse-polish-notation/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 85.81% of Go online submissions for Evaluate Reverse Polish Notation.
// Memory Usage: 4.4 MB, less than 26.40% of Go online submissions for Evaluate Reverse Polish Notation.
// 2022.12.17 Daily Challenge.
import "strconv"
func evalRPN(tokens []string) int {
  if 1 == len(tokens) {
    x, _ := strconv.Atoi(tokens[len(tokens)-1])
    return x 
  }
  s := make([]string,0)
  for _, v := range tokens {
    if 1 == len(v) && isAction(v[0]) {
      a, _ := strconv.Atoi(s[len(s)-2])
      b, _ := strconv.Atoi(s[len(s)-1])
      s = s[:len(s)-2]
      var ans int
      switch v[0]{
      case '*' :
        ans = a * b
      case '+' :
        ans = a + b
      case '-' :
        ans = a - b
      case '/' :
        ans = int(float64(a)/float64(b))
      }
      s = append(s, strconv.Itoa(ans))
    } else {
      s = append(s,v)
    }
  }
  x, _ := strconv.Atoi(s[len(s)-1])
  return x
}

func isAction(x byte) bool{
  if '*' == x || '+' == x || '-' == x || '/' == x {
    return true 
  }
  return false
}
