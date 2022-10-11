// Leetcode: 334. Increasing Triplet Subsequence. 
// https://leetcode.com/problems/increasing-triplet-subsequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 68 ms, faster than 92.36% of Go online submissions for Increasing Triplet Subsequence.
// Memory Usage: 17.9 MB, less than 36.81% of Go online submissions for Increasing Triplet Subsequence.
// 2022.10.11 Daily Challenge.
func increasingTriplet(nums []int) bool {
  // Based on:
  // https://leetcode.com/problems/increasing-triplet-subsequence/discuss/78995/Python-Easy-O(n)-Solution
  f,s := 4294967295, 4294967295
  for _, n := range(nums){
    if n <= f {
      f = n
    } else if n <= s{
      s = n
    } else {
      return true
    }
  }
  return false
}
