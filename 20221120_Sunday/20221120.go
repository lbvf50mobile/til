// Leetcode: 224. Basic Calculator.
// https://leetcode.com/problems/basic-calculator/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 82.22% of Go online submissions for Basic Calculator.
// Memory Usage: 2.8 MB, less than 100.00% of Go online submissions for Basic Calculator.
// 2022.11.20 Daily Challenge.
func calculate(s string) int {
  number, total, current := 0, 0, 1
  outer_stack := make([]int,1)
  outer_stack[0] = 1 // First outer is +;
  outer := 1
  for i := 0; i < len(s); i += 1{
    c := s[i]
    if '+' == c {
      current = outer
    } else if '-' == c {
      current = - outer
    } else if '(' == c {
      outer_stack = append(outer_stack,current)
      outer = current
    } else if ')' == c {
      outer_stack = outer_stack[0:len(outer_stack)-1]
      outer = outer_stack[len(outer_stack)-1]
      current = outer
    } else if is_num(c) {
      number = number * 10 + int(c) - 48 
      if i == len(s) - 1 || (! is_num(s[i+1])) {
        total += current * number
        current = outer
        number = 0
      }
    }
  }
  return total
}

func is_num(c byte) bool{
  return '0' <= c &&  c <= '9';
}
