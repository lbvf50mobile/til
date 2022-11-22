// Leetcode: 279. Perfect Squares.
// https://leetcode.com/problems/perfect-squares/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Perfect Squares.
// Memory Usage: 2 MB, less than 93.58% of Go online submissions for Perfect Squares.
// 2022.11.22 Daily Challenge.
import "math"
func numSquares(n int) int {
  // Based on:
  // https://leetcode.com/problems/perfect-squares/discuss/707526/Python-Fastest-O(sqrt(n))-solution-with-math-explanied.
  q := sqrt(n)
  if n == sq(q){ return 1}
  for j:=0; j <= q; j += 1 {
    val := n - sq(j) 
    if  val == sq(sqrt(val)) { return 2}
  }
  for ; 0 == n%4 ; { n /= 4 }
  if 7 == n % 8 { return 4 }
  return 3
}
func sqrt(x int) int{
  return int(math.Sqrt(float64(x)))
}
func sq(x int) int {
  return x * x
}


