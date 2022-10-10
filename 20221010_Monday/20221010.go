// Leetcode: 1328. Break a Palindrome.
// https://leetcode.com/problems/break-a-palindrome/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 21.15% of Go online submissions for Break a Palindrome.
// Memory Usage: 2.1 MB, less than 30.77% of Go online submissions for Break a Palindrome.
// 2022.10.10 Daily Challenge.
func breakPalindrome(palindrome string) string {
  pal := []rune(palindrome)
  if 1 == len(pal) {
    return ""
  }
  for i:=0; i < len(pal)/2; i += 1{
    if 'a' == pal[i] { continue}
    pal[i] = 'a'
    return string(pal)
  }
  pal[len(pal)-1] = 'b'
  return string(pal)
}
