// Leetcode: 438. Find All Anagrams in a String.
// https://leetcode.com/problems/find-all-anagrams-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 91.22% of Go online submissions for Find All Anagrams in a String.
// Memory Usage: 5 MB, less than 65.16% of Go online submissions for Find All Anagrams in a String.
// 2023.02.05 Daily Challenge.
func findAnagrams(s string, p string) []int {
  sl,pl := len(s), len(p)
  if sl < pl {
    return make([]int,0)
  }
  tmplt, wnd := count(p),count(s[0:pl])
  answer := make([]int,0)
  if same(tmplt, wnd) {
    answer = append(answer,0)
  }
  // i - index to decrease.
  // j - index to insert in answer.
  // k - index to increase in counter. 
  for i,j,k := 0, 1, pl; k < sl; i,j,k = i+1, j+1, k+1 {
    wnd[s[i] - 'a'] -= 1
    wnd[s[k] - 'a'] += 1
    if same(wnd,tmplt) {
      answer = append(answer,j)
    }
  }
  return answer
}
func count(str string) []int{
  answer := make([]int,26)
  for _,c := range str {
    answer[c - 'a'] += 1
  }
  return answer
}
func same(a,b []int) bool{
  for i,v := range a {
    if v != b[i] { 
      return false
    }
  }
  return true
}
