// Leetcode: 152. Maximum Product Subarray.
// https://leetcode.com/problems/maximum-product-subarray/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 86.72% of Go online submissions for Maximum Product Subarray.
// Memory Usage: 3.4 MB, less than 21.88% of Go online submissions for Maximum Product Subarray.
func maxProduct(nums []int) int {
  ans := nums[0]
  mn,mx := ans, ans
  for i := 1; i < len(nums); i+=1{
    if nums[i] < 0 {
      mn,mx = mx,mn
    }
    mn = min(nums[i], nums[i] * mn) 
    mx = max(nums[i], nums[i] * mx)
    ans = max(ans, mx)
  }
  return ans
}

func max(a int, b int) int{
  if a > b{
    return a
  }else{
    return b
  }
}
func min(a int, b int) int{
  if a < b{
    return a
  }else{
    return b
  }
}

