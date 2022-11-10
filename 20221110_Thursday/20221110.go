// Leetcode: 1047. Remove All Adjacent Duplicates In String.
// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 15 ms, faster than 46.73% of Go online submissions for Remove All Adjacent Duplicates In String.
// Memory Usage: 6.7 MB, less than 61.68% of Go online submissions for Remove All Adjacent Duplicates In String.
// 2022.10.11 Daily Challenge.
func removeDuplicates(s string) string {
  ans := make([]rune, 0, len(s))
  for _,c := range s {
    if 0 < len(ans) && ans[len(ans)-1] == c{
      ans = ans[0:len(ans)-1]
    } else {
      ans = append(ans,rune(c))
    }
  }
  return string(ans)
}
