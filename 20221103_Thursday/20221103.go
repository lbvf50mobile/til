// Leetcode: 2114. Maximum Number of Words Found in Sentences.
// https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 92.23% of Go online submissions for Maximum Number of Words Found in Sentences.
// Memory Usage: 4.2 MB, less than 10.68% of Go online submissions for Maximum Number of Words Found in Sentences.
// 2022.11.04 Friday.
// https://gist.github.com/lbvf50mobile/4bd7d42d47aa80cf3afc416919db0e77
// https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/discuss/2774931/Go%3A-One-loop-and-strings.Split.
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
