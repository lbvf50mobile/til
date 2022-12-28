// Leetcode: 1962. Remove Stones to Minimize the Total.
// https://leetcode.com/problems/remove-stones-to-minimize-the-total/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 451 ms, faster than 69.23% of Go online submissions for Remove Stones to Minimize the Total.
// Memory Usage: 8.7 MB, less than 100.00% of Go online submissions for Remove Stones to Minimize the Total.
// 2022.12.28 Daily Challenge.

// https://pkg.go.dev/container/heap
// https://leetcode.com/problems/last-stone-weight/discuss/549801/golang-using-containerheap
// https://stackoverflow.com/questions/18041334/convert-interface-to-int
import "container/heap"
import "fmt"
var p = fmt.Println
type IntHeap []int

func (h IntHeap) Len() int  { return len(h)}
func (h IntHeap) Less(i, j int) bool { return h[i] > h[j] } // Reversed!
func (h IntHeap) Swap(i, j int) { h[i], h[j] = h[j], h[i]}
func (h  * IntHeap) Push(x interface{}){
  *h = append(*h, x.(int))
}
func (h  * IntHeap) Pop() interface{} {
  old := *h
  n := len(old)
  x := old[n-1]
  *h = old[0:n-1]
  return x
}


func minStoneSum(piles []int, k int) int {
  pls := IntHeap(piles)
  heap.Init(&pls)
  total := 0 
  taken := 0
  for _, v := range piles {
    total += v
  }
  for i:=0 ; i < k; i += 1{
    big := heap.Pop(&pls).(int)
    get := (big/2)
    put := big - get
    taken += get
    heap.Push(&pls,put)
  }
  return total - taken
}
