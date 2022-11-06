// Leetcode: 899. Orderly Queue.
// https://leetcode.com/problems/orderly-queue/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 33 ms, faster than 20.00% of Go online submissions for Orderly Queue.
// Memory Usage: 7.4 MB, less than 60.00% of Go online submissions for Orderly Queue.
// 2022.11.06 Daily Challenge.
import (
  "fmt"
  "sort"
  "strings"
)
func orderlyQueue(s string, k int) string {
  // Based on:
  // https://leetcode.com/problems/orderly-queue/solution/
  if 1 == k {
    answer := s
    n := len(s)
    tmp := strings.Split(s,"")
    // https://go.dev/ref/spec#Appending_and_copying_slices
    // https://stackoverflow.com/a/16252034/8574922
    for i := 0; i < n; i += 1{
      a := tmp[0:i]
      b := tmp[i:]
      x := strings.Join(append(b,a...),"")
      if answer > x {
        answer = x
      }
    }
    return answer
  }
  // https://stackoverflow.com/a/22689818/8574922
  a := strings.Split(s,"")
  sort.Strings(a)
  return strings.Join(a,"")
}
