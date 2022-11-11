// Leetcode: 26. Remove Duplicates from Sorted Array.
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 61.10% of Go online submissions for Remove Duplicates from Sorted Array.
// Memory Usage: 4.4 MB, less than 32.81% of Go online submissions for Remove Duplicates from Sorted Array.
// 2022.11.11 Daily Challenge.
func removeDuplicates(nums []int) int {
  w := 0
  for r := 1 ; r < len(nums); r += 1 {
    if nums[w] != nums[r] {
      nums[w+1] = nums[r]
      w += 1
    }
  }
  return w + 1
}
