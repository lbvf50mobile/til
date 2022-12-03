// Leetcode: 1657. Determine if Two Strings Are Close.
// https://leetcode.com/problems/determine-if-two-strings-are-close/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 58 ms, faster than 50.00% of Go online submissions for Determine if Two Strings Are Close.
// Memory Usage: 8 MB, less than 50.00% of Go online submissions for Determine if Two Strings Are Close.
// 2022.12.02 Daily Challenge.
// 2022.12.03 Implemented.
import "sort"
type info struct{
  used []bool
  counter []int
}
var w1, w2 info
func closeStrings(word1 string, word2 string) bool {
  if(len(word1) != len(word2)) { return false}
  initSlices()
  fill(word1,&w1)
  fill(word2,&w2)
  if ! compUsed() {return false}
  if ! sortCompCounters() {return false}
  return true
}

func initSlices(){
  w1.used = make([]bool,26)
  w1.counter = make([]int,26)
  w2.used = make([]bool,26)
  w2.counter = make([]int,26)
}
func fill(w string, stat * info){
  for _, c := range w {
    i := int(c - 'a')
    stat.used[i] = true
    stat.counter[i] += 1
  }
}

func compUsed()bool{
  for i,v := range w1.used {
    if w2.used[i] != v { return false }
  }
  return true
}
func sortCompCounters()bool{
  sort.Ints(w1.counter)
  sort.Ints(w2.counter)
  for i,v := range w1.counter {
    if w2.counter[i] != v { return false}
  }
  return true
}
