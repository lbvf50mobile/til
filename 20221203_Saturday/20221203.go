// Leetcode: 451. Sort Characters By Frequency.
// https://leetcode.com/problems/sort-characters-by-frequency/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 84.63% of Go online submissions for Sort Characters By Frequency.
// Memory Usage: 4.6 MB, less than 90.68% of Go online submissions for Sort Characters By Frequency.
// 2022.12.03 Daily Challenge.
// 2022.12.13 Updated.
import "sort"
func frequencySort(s string) string {
  counter := make([]int,62)
  for _,v := range s{
    if 'a' <= v && v <= 'z' {
      i := v - 'a'
      counter[i] += 1
    }else if 'A' <= v && v <= 'Z'{
      i := v - 'A' + 26
      counter[i] += 1
    } else {
      i := v - '0' + 52
      counter[i] += 1
    }
  }
  chrs := make([]int,62)
  for i := 0; i < 62; i +=1 {
    chrs[i] = i
  }
  sort.SliceStable(chrs, func(i,j int) bool {
    a,b := chrs[i],chrs[j]
    return counter[a] > counter[b]
  })
  answer := make([]byte, len(s))
  pos := 0
  for _,v := range chrs {
    c := 'a'
    if v < 26 {
      c = rune('a' + byte(v)) 
    }else if v < 52{
      c = rune('A' + byte(v - 26))
    } else {
      c = rune('0' + byte(v - 52))
    }
    times := counter[v]
    for i := 0; i < times; i,pos = i+1, pos + 1{
      answer[pos] = byte(c)
    }
  }
  return string(answer)
}
