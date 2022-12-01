// Leetcode: 1704. Determine if String Halves Are Alike.
// https://leetcode.com/problems/determine-if-string-halves-are-alike/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 36.67% of Go online submissions for Determine if String Halves Are Alike.
// Memory Usage: 2.2 MB, less than 81.67% of Go online submissions for Determine if String Halves Are Alike.
// 2022.12.01 Daily Challenge.
func halvesAreAlike(s string) bool {
  i,j := 0, len(s) - 1
  a,b := 0, 0
  for ; i < j; i,j = i+1, j-1 {
    if vowel(s[i]){ a += 1}
    if vowel(s[j]){ b += 1}
  }
  return a == b
}

func vowel(s byte) bool {
  if 'a' == s || 'e' == s || 'i' == s || 'o' == s || 'u' == s {
    return true
  }
  if 'A' == s || 'E' == s || 'I' == s || 'O' == s || 'U' == s {
    return true
  }
  return false
}
