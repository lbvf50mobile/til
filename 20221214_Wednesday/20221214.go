// Leetcode: 198. House Robber.
// https://leetcode.com/problems/house-robber/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 50.65% of Go online submissions for House Robber.
// Memory Usage: 2 MB, less than 81.87% of Go online submissions for House Robber.
// 2022.12.14 Daily Challenge.
import "fmt"
var p = fmt.Println
var dp []int
var n []int
var set [] bool
func rob(nums []int) int {
  if 1 == len(nums) { return nums[0]}
  dp = make([]int,len(nums))
  set = make([]bool,len(nums))
  n = nums
  return max(dfs(0), dfs(1))
}
func dfs(i int) int {
  if i >= len(n) {
    return 0
  }
  if set[i] {
    return dp[i]
  }
  dp[i] = max(n[i] + dfs(i+2), n[i] + dfs(i+3))
  set[i] = true
  return dp[i]
}
func max(a,b int) int{
  if a > b { return a}
  return b
}
