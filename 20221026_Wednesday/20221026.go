// Leetcode: 523. Continuous Subarray Sum.
// https://leetcode.com/problems/continuous-subarray-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 349 ms, faster than 38.46% of Go online submissions for Continuous Subarray Sum.
// Memory Usage: 12.5 MB, less than 66.67% of Go online submissions for Continuous Subarray Sum.
// 2022.10.26 Daily Challenge.
func checkSubarraySum(nums []int, k int) bool {
  if 1 == k && len(nums) > 1 {
    return true
  }
  pref_sum := make([]int,len(nums) + 1)
  hash := make(map[int]int)
  hash[0] = 0
  for j := 1; j <= len(nums); j +=1 {
    pos := (j-1) < (len(nums)-1)
    if  pos && 0 == nums[j-1] && 0 == (nums[j]%k) {
      return true
    }
    pref_sum[j] = pref_sum[j-1] + nums[j-1]
    sum := pref_sum[j]
    coef := sum/k
    for n := 1; n <= coef; n += 1{
      i, ok := hash[sum - n*k]
      if ok && j - i >= 2 {
        return true
      }
    }
    hash[sum] = j
  }
  return false
}
