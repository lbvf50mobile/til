// Leetcode: 557. Reverse Words in a String III.
// https://leetcode.com/problems/reverse-words-in-a-string-iii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 20 ms, faster than 43.29% of Go online submissions for Reverse Words in a String III.
// Memory Usage: 6.5 MB, less than 81.93% of Go online submissions for Reverse Words in a String III.
func reverseWords(s string) string {
  r := []rune(s)
  start,end := 0,0
  for index,char := range r{
    if " " == string(char){
      end = index - 1
      reverse(r,start,end)
      start = index + 1
    }
  }
  end = len(r) - 1
  reverse(r,start,end)
  return string(r)
}

func reverse(r []rune, start int, end int){
  for ; start <= end; start, end = start+1, end-1{
    r[start],r[end] = r[end], r[start]
  }
}

