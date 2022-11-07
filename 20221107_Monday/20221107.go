// Leetcode: 1323. Maximum 69 Number.
// https://leetcode.com/problems/maximum-69-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Maximum 69 Number.
// Memory Usage: 1.8 MB, less than 96.23% of Go online submissions for Maximum 69 Number.
// 2022.11.07 Daily Challenge.
import "math"
func maximum69Number (num int) int {
  pos := -1
  tmp := num
  // Find left most six in Positional notation.
  for i:= 0 ; tmp > 0; i+=1  {
    x := tmp%10
    if 6 == x {
      pos = i
    }
    tmp = tmp - tmp%10
    tmp = tmp/10
  }
  // Remove this six and add nine.
  if -1 != pos {
    // Fix: 1 is 10**0; Pos must start from 0.
    // Fixed.
    minus := 6 * int(math.Pow10(pos))
    plus := 9 * int(math.Pow10(pos))
    return num - minus + plus
  }
  return num
}
