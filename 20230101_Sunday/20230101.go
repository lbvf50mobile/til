// Leetcode: 290. Word Pattern.
// https://leetcode.com/problems/word-pattern/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Word Pattern.
// Memory Usage: 1.9 MB, less than 65.81% of Go online submissions for Word Pattern.
// 2023.01.01 Daily Challenge.
import "strings"
import "fmt"
var p = fmt.Println
func wordPattern(pattern string, s string) bool {
  wrds := strings.Fields(s)
  if len(pattern) != len(wrds) { return false }
  hChars := make(map[rune]string)
  hUsed := make(map[string]bool)
  for i,char := range pattern {
    word := wrds[i]
    value, has_key := hChars[char]
    if  has_key {
      if word != value { return false }
    } else {
      // Check if the word is used.
      _, used := hUsed[word]
      if used { return false }
      hUsed[word] = true
      hChars[char] = word
    }
  }
  return true
}
