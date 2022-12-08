// Leetcode: 2256. Minimum Average Difference.
// https://leetcode.com/problems/minimum-average-difference/
import "fmt"
var p = fmt.Println;
func minimumAverageDifference(nums []int) int {
  pfx := make([]int,len(nums)) // prefix_sum
  pfx[0] = nums[0]
  for i := 1 ; i < len(nums) ; i += 1 {
    pfx[i] = nums[i] + pfx[i-1]
  }
  sfx := make([]int, len(nums)+1) // suffix_sum
  for j := len(nums)-1 ; 0 <= j ; j -= 1 {
    sfx[j] = nums[j] + sfx[j+1]
  }
  p(nums)
  p(pfx)
  p(sfx)
  avg := pfx[0] + sfx[1]
  min := avg
  ans := 0
  p(avg,pfx[0],sfx[1],0)
  /*
[2 5 3 9 5 3]
[2 7 10 19 24 27]
[27 25 20 17 8 3 0]
27 2 25 0
27 7 20 1
27 10 17 2
27 19 8 3
27 24 3 4
27 27 0 5
  */
  for i := 1; i < len(nums); i += 1{
    avg = pfx[i] + sfx[i+1]
    p(avg,pfx[i],sfx[i+1],i)
    if avg < min {
      min = avg
      ans = i
    }
  }
  return ans
}
