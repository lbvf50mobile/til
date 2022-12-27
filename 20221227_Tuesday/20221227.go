// Leetcode: 2279. Maximum Bags With Full Capacity of Rocks.
// https://leetcode.com/problems/maximum-bags-with-full-capacity-of-rocks/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 155 ms, faster than 100.00% of Go online submissions for Maximum Bags With Full Capacity of Rocks.
// Memory Usage: 9.2 MB, less than 7.14% of Go online submissions for Maximum Bags With Full Capacity of Rocks.
// 2022.12.27 Daily Challenge.
import "sort"
func maximumBags(capacity []int, rocks []int, additionalRocks int) int {
  delta := make([]int,len(rocks))
  for i,_ := range delta {
    delta[i] = capacity[i] - rocks[i]
  }
  sort.Ints(delta)
  counter := 0
  for _, v := range delta{
    if v <= additionalRocks {
      additionalRocks -= v
      v = 0
    }
    if 0 == v { counter += 1}
  }
  return counter
}
