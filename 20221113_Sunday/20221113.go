// Leetcode: 151. Reverse Words in a String.
// https://leetcode.com/problems/reverse-words-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 66.41% of Go online submissions for Reverse Words in a String.
// Memory Usage: 3.5 MB, less than 43.51% of Go online submissions for Reverse Words in a String.
// 2022.11.13 Daily Challenge.
import (
  "strings"
)
func reverseWords(s string) string {
  slc := strings.Split(s," ")
  fltr := make([]string, 0, len(slc))
  for _,x := range(slc) {
    if 0 != len(x){
      fltr = append(fltr, x)
    }
  }
  for i,j := 0, len(fltr)-1; i < j; {
    fltr[i],fltr[j] = fltr[j],fltr[i]
    i += 1
    j -= 1
  }
  return strings.Join(fltr," ")
}
