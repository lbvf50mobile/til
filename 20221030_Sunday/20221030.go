// Leetcode: 1929. Concatenation of Array.
// https://leetcode.com/problems/concatenation-of-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 26 ms, faster than 8.40% of Go online submissions for Concatenation of Array.
// Memory Usage: 6.4 MB, less than 67.16% of Go online submissions for Concatenation of Array.
// 2022.10.31 Monday;
func getConcatenation(nums []int) []int {
  ans := make([]int,2*len(nums))
  for i,data := range nums {
    ans[i] = data
    ans[i+len(nums)] = data
  }
  return ans
}
