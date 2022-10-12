// Leetcode: 976. Largest Perimeter Triangle.
// https://leetcode.com/problems/largest-perimeter-triangle/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 65 ms, faster than 52.00% of Go online submissions for Largest Perimeter Triangle.
// Memory Usage: 7 MB, less than 39.00% of Go online submissions for Largest Perimeter Triangle.
// 2022.10.12 Daily Challenge.
import "sort"
import "fmt"
func largestPerimeter(nums []int) int {
  sort.Ints(nums)
  for i:=len(nums)-1; i > 1; i-=1{
    if nums[i] < nums[i-1] + nums[i-2]{
      return nums[i] + nums[i-1] + nums[i-2]
    }
  }
  return 0
}
