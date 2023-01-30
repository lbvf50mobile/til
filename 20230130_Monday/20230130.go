// Leetcode: 1137. N-th Tribonacci Number.
// https://leetcode.com/problems/n-th-tribonacci-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for N-th Tribonacci Number.
// Memory Usage: 1.9 MB, less than 73.74% of Go online submissions for N-th Tribonacci Number.
// 2023.01.30 Daily Challenge.
func tribonacci(n int) int {
  a,b,c := 0, 1, 1
  if 0 == n { return a }
  if 1 == n  { return b }
  if 2 == n { return c }
  for i := 3; i <= n ; i += 1 {
    a,b,c = b, c, a+b+c 
  }
  return c
}
