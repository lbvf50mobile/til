// Leetcode: 45. Jump Game II.
// https://leetcode.com/problems/jump-game-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 70.99% of Go online submissions for Jump Game II.
// Memory Usage: 5.9 MB, less than 60.85% of Go online submissions for Jump Game II.
// 2023.02.08 Daily Challenge.
func jump(nums []int) int {
  cur, pos := 0, 0 // curren and  possible ranges.
  steps := 0
  border := len(nums) - 1
  for i := 0; i < border ; i += 1{
    pos = max(pos, nums[i] + i)
    if cur == i {
      cur = pos
      steps += 1
    }
  }
  return steps
}

func max(a,b int) int {
  if a > b {
    return a
  }
  return b
}
