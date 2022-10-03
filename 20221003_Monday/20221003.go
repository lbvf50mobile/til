// Leetcode: 1578. Minimum Time to Make Rope Colorful.
// https://leetcode.com/problems/maximum-time-to-make-rope-colorful/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 295 ms, faster than 17.78% of Go online submissions for Minimum Time to Make Rope Colorful.
// Memory Usage: 9.2 MB, less than 77.78% of Go online submissions for Minimum Time to Make Rope Colorful.
func minCost(colors string, neededTime []int) int {
  sum := neededTime[0]
  max := neededTime[0]
  answer := 0
  for i := 1; i < len(neededTime); i += 1{
    if colors[i-1] == colors[i] {
      sum += neededTime[i]
      if max < neededTime[i]{
        max = neededTime[i]
      }
    } else{
      answer += (sum - max)
      sum = neededTime[i]
      max = neededTime[i]
    }
  }
  answer += (sum - max)
  return answer
}
