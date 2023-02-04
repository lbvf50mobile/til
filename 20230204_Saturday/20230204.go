// Leetcode: 567. Permutation in String.
// https://leetcode.com/problems/permutation-in-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 87.72% of Go online submissions for Permutation in String.
// Memory Usage: 2.5 MB, less than 56.64% of Go online submissions for Permutation in String.
// 2023.02.04 Daily Challenge.
func checkInclusion(s1 string, s2 string) bool {
  l1,l2 := len(s1), len(s2)
  if l1 > l2 {
    return false
  }
  a,b := count(s1), count(s2[0:l1])
  if same(a,b){
    return true
  }
  for i,j := 0, l1; j < l2; i,j = i+1, j+1 {
    pr,cr := s2[i] - 'a', s2[j] - 'a'
    b[pr] -= 1
    b[cr] += 1
    if same(a,b) {
      return true
    }
  }
  return false
}

func count(s string) []int{
  ans := make([]int,26)
  for _,c := range s {
    ans[c - 'a'] += 1
  }
  return ans
}

func same(a,b []int) bool{
  for i,v := range a {
    if v != b[i] {
      return false
    }
  }
  return true
}
