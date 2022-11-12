// Leetcode: 70. Climbing Stairs.
// https://leetcode.com/problems/climbing-stairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 39.94% of Go online submissions for Climbing Stairs.
// Memory Usage: 1.9 MB, less than 90.47% of Go online submissions for Climbing Stairs.
// 2022.11.13 Sunday.
// https://gist.github.com/lbvf50mobile/fa28880f6fb1f02b2626f108b6c16871
// https://leetcode.com/problems/climbing-stairs/discuss/2808074/Go%3A-Three-variables.
func climbStairs(n int) int {
  a,b,c := 1, 1, 0
  for i := 1; i < n; i += 1 {
    b += a
    c += a
    a,b = b,c
    c = 0
  }
  return a
}
