// Leetcode: 352. Data Stream as Disjoint Intervals.
// https://leetcode.com/problems/data-stream-as-disjoint-intervals/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 378 ms, faster than 40.00% of Go online submissions for Data Stream as Disjoint Intervals.
// Memory Usage: 11.6 MB, less than 20.00% of Go online submissions for Data Stream as Disjoint Intervals.
// 2023.01.28 Daily Challenge.
import "sort"
type SummaryRanges struct {
  x map[int]bool
    
}


func Constructor() SummaryRanges {
  return SummaryRanges{x: make(map[int]bool)}
    
}


func (this *SummaryRanges) AddNum(value int)  {
  this.x[value] = true
    
}


func (this *SummaryRanges) GetIntervals() [][]int {
  x := this.x
  keys := make([]int,len(x))
  i := 0
  for k := range x {
    keys[i] = k
    i += 1
  }
  sort.Ints(keys)
  answer := make([][]int,0)
  ln := len(answer)
  for _,v := range keys {
    ln = len(answer)
    if 0 == ln || answer[ln-1][1] + 1 < v {
      tmp := []int{v,v}
      answer = append(answer,tmp)
    } else {
      answer[ln-1][1] = v
    }
  }
  return answer
}


/**
 * Your SummaryRanges object will be instantiated and called as such:
 * obj := Constructor();
 * obj.AddNum(value);
 * param_2 := obj.GetIntervals();
 */
