// Leetcode: 28. Find the Index of the First Occurrence in a String.
// https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 19.88% of Go online submissions for Find the Index of the First Occurrence in a String.
// Memory Usage: 2 MB, less than 37.29% of Go online submissions for Find the Index of the First Occurrence in a String.
// 2023.03.03 Daily Challenge.
func strStr(haystack string, needle string) int {
  hl,nl := len(haystack), len(needle)
  if nl > hl { return -1 }
  for i := 0; i < hl - nl + 1; i += 1 {
    if haystack[i] == needle[0] {
      counter := 1 // First symbol is already checked.
      for j := 1; j < nl; j += 1{
        if needle[j] != haystack[i+j] { break }
        counter += 1
      }
      if nl == counter {
        return i
      }
    }
  }
  return -1
}

