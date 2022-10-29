// Leetcode: 2136. Earliest Possible Day of Full Bloom.
// https://leetcode.com/problems/earliest-possible-day-of-full-bloom/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 283 ms, faster than 92.86% of Go online submissions for Earliest Possible Day of Full Bloom.
// Memory Usage: 10.3 MB, less than 100.00% of Go online submissions for Earliest Possible Day of Full Bloom.
// 2022.10.29 Daily Challenge.
import "sort"
func earliestFullBloom(plantTime []int, growTime []int) int {
  // Based on:
  // https://leetcode.com/problems/earliest-possible-day-of-full-bloom/solution/
  current_plant_time := 0
  result := 0
  indices := make([]int, len(growTime))
  for i,_ := range indices {
    indices[i] = i
  }
  sort.SliceStable(indices,func (i,j int) bool{
    // Here was a bug. Fixed. i and j are incices of array.
    // and in array indices need to use value of this array 
    // in this case.
    return growTime[indices[i]] > growTime[indices[j]]
  })
  for _, i := range indices{
    current_plant_time += plantTime[i]
    result = max(result, current_plant_time + growTime[i])
  }
  return result
}
func max(a, b int) int {
  if a > b {
    return a
  } else {
    return b
  }
}
