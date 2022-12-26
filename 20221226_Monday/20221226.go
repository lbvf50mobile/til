// Leetcode: 55. Jump Game.
// https://leetcode.com/problems/jump-game/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 56 ms, faster than 97.44% of Go online submissions for Jump Game.
// Memory Usage: 6.9 MB, less than 91.99% of Go online submissions for Jump Game.
// 2022.12.26 Daily Challenge.
func canJump(nums []int) bool {
  l := len(nums)-1
  j := 0 // Farest index player could reach.
  for i,v := range nums {
    if j < i { return false}
    if j < i + v { j = i + v}
    if j >= l { return true}
  }
  return j >= l
}
