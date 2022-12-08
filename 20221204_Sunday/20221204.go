// Leetcode: 2256. Minimum Average Difference.
// https://leetcode.com/problems/minimum-average-difference/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 259 ms, faster than 23.49% of Go online submissions for Minimum Average Difference.
// Memory Usage: 10.6 MB, less than 11.36% of Go online submissions for Minimum Average Difference.
// 2022.12.04 Daily Challenge.
// 2022.12.08 Updated.
func minimumAverageDifference(nums []int) int {
  n := len(nums)
  pfx := make([]int,n) // prefix_sum
  pfx[0] = nums[0]
  for i := 1 ; i < n ; i += 1 {
    pfx[i] = nums[i] + pfx[i-1]
  }
  sfx := make([]int, n+1) // suffix_sum
  for j := n-1 ; 0 <= j ; j -= 1 {
    sfx[j] = nums[j] + sfx[j+1]
  }
  sfx_part := 0
  if  n > 1 {
    sfx_part = sfx[1]/(n-1)
  }
  avg := abs(pfx[0]/1 - sfx_part)
  min := avg
  ans := 0
  for i := 1; i < n; i += 1{
    sfx_part = 0
    if i < (n-1) {
      sfx_part = sfx[i+1]/(n-i-1)
    }
    avg = abs(pfx[i]/(i+1)-sfx_part)
    if avg < min {
      min = avg
      ans = i
    }
  }
  return ans
}

func abs(x int) int{
  if x < 0 { return - x}
  return x
}
