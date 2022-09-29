// Leetcode: 658. Find K Closest Elements.
// https://leetcode.com/problems/find-k-closest-elements/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 112 ms, faster than 15.63% of Go online submissions for Find K Closest Elements.
// Memory Usage: 7.8 MB, less than 29.38% of Go online submissions for Find K Closest Elements.
import "math"
func findClosestElements(arr []int, k int, x int) []int {
  i,j := 0, k-1
  sum,min_sum := 0, 0
  min_i, min_j := i,j
  for ind := 0; ind < k; ind += 1{
    sum += abs(arr[ind] - x)
  }
  min_sum = sum
  for ind := k ; ind < len(arr); ind += 1{
    sum -= abs(x - arr[i])
    sum += abs(x - arr[ind])
    i += 1
    j += 1
    if sum < min_sum {
      min_sum = sum
      min_i, min_j = i,j 
    }
  }
 return arr[min_i:min_j+1] // Char 3: min_i declared but not used (solution.go)
}

func abs(x int) int{
  return int(math.Abs(float64(x)))
}
