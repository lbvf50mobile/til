// Leetcode: 645. Set Mismatch.
// https://leetcode.com/problems/set-mismatch/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 57 ms, faster than 27.78% of Go online submissions for Set Mismatch.
// Memory Usage: 7 MB, less than 35.19% of Go online submissions for Set Mismatch
// 20221023 Daily Challenge.
func findErrorNums(nums []int) []int {
  max := len(nums)
  counter := make([]int,max+1)
  duplicate := 0
  for _, el := range nums {
    counter[el] += 1
    if 2 == counter[el] {
      duplicate = el
    }
  }
  substituted := 0
  for i := 1; i <= max; i += 1{
    if 0 == counter[i] {
      substituted = i
      break
    }
  }
  return []int{duplicate, substituted}
}
