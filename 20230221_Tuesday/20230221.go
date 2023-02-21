// Leetcode: 540. Single Element in a Sorted Array.
// https://leetcode.com/problems/single-element-in-a-sorted-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 25 ms, faster than 56.41% of Go online submissions for Single Element in a Sorted Array.
// Memory Usage: 7.7 MB, less than 94.87% of Go online submissions for Single Element in a Sorted Array.
// 2023.02.21 Daily Challenge.
func singleNonDuplicate(nums []int) int {
  l,r,m := 0, len(nums)-1, 0
  lst := len(nums) - 1
  for l < r {
    m = l + (r-l)/2
    if 1 == m%2 {
      m -= 1
    }
    if m == lst || nums[m] != nums[m+1] {
      r = m
    } else {
      l = m + 2
    }
  }
  return nums[l]
}
