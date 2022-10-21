// Leetcode: 219. Contains Duplicate II.
// https://leetcode.com/problems/contains-duplicate-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 238 ms, faster than 41.89% of Go online submissions for Contains Duplicate II.
// Memory Usage: 14.2 MB, less than 18.92% of Go online submissions for Contains Duplicate II.
// 2022.10.21 Daily Challenge.
func containsNearbyDuplicate(nums []int, k int) bool {
  hash := make(map[int]int)
  for j,el := range nums{
    i, exists := hash[el]
    if exists && (j-i) <= k {
      return true
    }
    hash[el] = j
  }
  return false
}
