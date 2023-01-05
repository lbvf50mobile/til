// Leetcode: 452. Minimum Number of Arrows to Burst Balloons.
// https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 491 ms, faster than 44.83% of Go online submissions for Minimum Number of Arrows to Burst Balloons.
// Memory Usage: 16.1 MB, less than 68.97% of Go online submissions for Minimum Number of Arrows to Burst Balloons.
// 2023.01.05 Daily Challenge.
import "sort"
func findMinArrowShots(points [][]int) int {
  counter, last_arrow := 0, 0
  sort.Slice(points,func(i, j int) bool{
    return points[i][1] < points[j][1]
   })
   for _,v := range points {
     l,r := v[0],v[1]
     if 0 == counter || last_arrow < l {
       counter += 1
       last_arrow = r
     }
   }
  return counter
}
