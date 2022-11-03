// Leetcode: 2114. Maximum Number of Words Found in Sentences.
// https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 92.23% of Go online submissions for Maximum Number of Words Found in Sentences.
// Memory Usage: 4.2 MB, less than 10.68% of Go online submissions for Maximum Number of Words Found in Sentences.
// 2022.11.04 Friday.
import "strings"
func mostWordsFound(sentences []string) int {
  max := 0
  for _, sentence := range sentences {
    size := len(strings.Split(sentence," "))
    if max < size {
      max = size
    }
  }
  return max
}
