// Leetcode: 1323. Maximum 69 Number.
// https://leetcode.com/problems/maximum-69-number/
import "math"
import "fmt"
var p = fmt.Println
func maximum69Number (num int) int {
  p(num,"num")
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
  p(pos,"pos")
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
