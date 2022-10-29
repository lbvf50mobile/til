// Leetcode: 2136. Earliest Possible Day of Full Bloom.
// https://leetcode.com/problems/earliest-possible-day-of-full-bloom/
// Fails:
// [3,11,29,4,4,26,26,12,13,10,30,19,27,2,10]
// [10,13,22,17,18,15,21,11,24,14,18,23,1,30,6]
// 232 instead 227.
import "sort"
import "fmt"
func earliestFullBloom(plantTime []int, growTime []int) int {
  p := fmt.Println
  // Based on:
  // https://leetcode.com/problems/earliest-possible-day-of-full-bloom/solution/
  current_plant_time := 0
  result := 0
  indices := make([]int, len(growTime))
  for i,_ := range indices {
    indices[i] = i
  }
  sort.SliceStable(indices,func (i,j int) bool{
    return growTime[indices[i]] > growTime[indices[j]]
  })
  p(indices)
  // [2 1 0 4 3 6 5 8 7 11 10 9 13 12 14]
  // [13, 8, 11, 2, 6, 4, 10, 3, 5, 9, 1, 7, 0, 14, 12]
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
