// Leetcode: 35. Search Insert Position.
// https://leetcode.com/problems/search-insert-position/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 59.23% of Go online submissions for Search Insert Position.
// Memory Usage: 2.9 MB, less than 100.00% of Go online submissions for Search Insert Position.
// 2023.02.20 Daily Challenge.
func searchInsert(nums []int, target int) int {
  l,r,m, v := 0, len(nums) - 1, 0, 0
  for l <= r {
    m = l + (r-l)/2
    v = nums[m]
    if v == target { return m }
    if v < target {
      l = m + 1
    } else {
      r = m - 1
    }
  }
  return l
}
