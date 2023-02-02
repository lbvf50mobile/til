// Leetcode: 953. Verifying an Alien Dictionary.
// https://leetcode.com/problems/verifying-an-alien-dictionary/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 22.81% of Go online submissions for Verifying an Alien Dictionary.
// Memory Usage: 3 MB, less than 5.26% of Go online submissions for Verifying an Alien Dictionary.
// 2023.02.02 Daily Challenge.
var h map[rune]rune
func isAlienSorted(words []string, order string) bool {
  h = make(map[rune]rune)
  alpha := "abcdefghijklmnopqrstuvwxyz"
  for i := 0; i < 26; i += 1 {
    key, value := order[i], alpha[i]
    h[rune(key)] = rune(value)
  }
  // New words.
  nw := make([]string, len(words))
  for i,w := range words {
    nw[i] = convert(w)
  }
  for i,j := 0, 1; j < len(nw); i,j = i+1,j+1 {
    if nw[i] > nw[j]{
      return false   
    }
  }
  return true
}

func convert(s string) string {
  answer := make([]rune,len(s))
  for i, key := range s {
    answer[i] = h[rune(key)]
  }
  return string(answer)
}
