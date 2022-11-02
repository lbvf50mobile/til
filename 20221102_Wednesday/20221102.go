// Leetcode: 26. Remove Duplicates from Sorted Array.
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 20 ms, faster than 38.52% of Go online submissions for Remove Duplicates from Sorted Array.
// Memory Usage: 4.6 MB, less than 10.58% of Go online submissions for Remove Duplicates from Sorted Array.
// 2022.11.03 Thursday;
func removeDuplicates(nums []int) int {
  if 1 == len(nums){
    return 1
  }
  w,r := 0, 1 // Writer and Reader.
  for ; r < len(nums); r += 1 {
    if nums[w] != nums[r] {
      nums[w+1] = nums[r] 
      w += 1
    }
  }
  return w+1
}
