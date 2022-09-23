// Leetcode: 1680. Concatenation of Consecutive Binary Numbers.
// https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 184 ms, faster than 12.50% of Go online submissions for Concatenation of Consecutive Binary Numbers.
// Memory Usage: 2 MB, less than 12.50% of Go online submissions for Concatenation of Consecutive Binary Numbers.
import "math"
func concatenatedBinary(n int) int {
  // The code is based on:
  // https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/discuss/2612407/C%2B%2B-or-Diagram-or-Related-Problems
  answer, mod := 0, int(1e9) + 7
  for i := 1; i <= n; i+=1{
    answer = (((answer << len(i)) % mod) + i) % mod
  }
  return answer
}

func len(x int) int{
  return int(math.Log2(float64(x))) + 1
}
