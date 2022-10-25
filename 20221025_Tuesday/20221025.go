// Leetcode: 1662. Check If Two String Arrays are Equivalent.
// https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 42.25% of Go online submissions for Check If Two String Arrays are Equivalent.
// Memory Usage: 2.3 MB, less than 94.37% of Go online submissions for Check If Two String Arrays are Equivalent.
// 20221025 Daily Challenge.
func arrayStringsAreEqual(word1 []string, word2 []string) bool {
  i1,i2 := 0,0
  j1,j2 := 0,0
  for ; i1 < len(word1) && i2 < len(word2); {
    if word1[i1][j1] != word2[i2][j2] {
      return false
    }
    j1 += 1
    j2 += 1
    if j1 >= len(word1[i1]){
      j1 = 0
      i1 += 1
    }
    if j2 >= len(word2[i2]){
      j2 = 0
      i2 += 1
    }
  }
  if len(word1) == i1 && len(word2) == i2 && 0 == j1 && 0 == j2 {
    return true
  }
  return false
}
