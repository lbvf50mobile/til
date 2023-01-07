// Leetcode: 134. Gas Station.
// https://leetcode.com/problems/gas-station/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 82 ms, faster than 87.77% of Go online submissions for Gas Station.
// Memory Usage: 9.1 MB, less than 99.28% of Go online submissions for Gas Station.
// 2023.01.07 Daily Challenge.
func canCompleteCircuit(gas []int, cost []int) int {
  // Based on:
  // https://leetcode.com/problems/gas-station/discuss/42568/Share-some-of-my-ideas.
  start,allGas,allCost,tank := 0,0,0,0
  for i,g := range gas {
    allGas += g
    allCost += cost[i]
    if tank + g < cost[i] {
      tank = 0
      start = i + 1
    } else {
      tank += (g - cost[i])
    }
  }
  if allGas < allCost { return -1 }
  return start
}
