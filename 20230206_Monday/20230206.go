// Leetcode: 1470. Shuffle the Array.
// https://leetcode.com/problems/shuffle-the-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 60.27% of Go online submissions for Shuffle the Array.
// Memory Usage: 3.6 MB, less than 99.11% of Go online submissions for Shuffle the Array.
// 2023.02.06 Daily Challenge.
func shuffle(nums []int, n int) []int {
  ans := make([]int,len(nums))
  j := 0
  for i := 0; i < n; i += 1 {
    ans[j] = nums[i]
    j += 1
    ans[j] = nums[i + n]
    j += 1
  }
  return ans
}
