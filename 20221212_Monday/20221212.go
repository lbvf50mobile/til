// Leetcode: 70. Climbing Stairs.
// https://leetcode.com/problems/climbing-stairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Climbing Stairs.
// Memory Usage: 1.9 MB, less than 89.49% of Go online submissions for Climbing Stairs.
// 2022.12.12 Daily Challenge.
func climbStairs(n int) int {
  a,b,c := 1, 0, 0
  for i := 1; i <= n; i +=1 {
    a,b,c = b+a, c+a, 0
  }
  return a
}
