// Leetcode: 232. Implement Queue using Stacks.
// https://leetcode.com/problems/implement-queue-using-stacks/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 58.13% of Go online submissions for Implement Queue using Stacks.
// Memory Usage: 1.9 MB, less than 80.00% of Go online submissions for Implement Queue using Stacks.
// 2022.12.16 Daily Challenge.
type MyQueue struct {
  rv []int
  tmp []int
    
}


func Constructor() MyQueue {
  return MyQueue{make([]int,0),make([]int,0)}
}


func (this *MyQueue) Push(x int)  {
  n := len(this.rv)
  for i := 0; i < n ; i += 1{
    s := len(this.rv)
    this.tmp = append(this.tmp, this.rv[s-1])
    this.rv = this.rv[:s-1]
  }
  this.tmp = append(this.tmp,x)
  n = len(this.tmp)
  for i := 0; i < n; i += 1 {
    s := len(this.tmp)
    this.rv = append(this.rv, this.tmp[s-1])
    this.tmp = this.tmp[:s-1]
  }
}


func (this *MyQueue) Pop() int {
  n := len(this.rv)
  ans := this.rv[n-1]
  this.rv = this.rv[:n-1]
  return ans
}


func (this *MyQueue) Peek() int {
  n := len(this.rv)
  return this.rv[n-1]
}


func (this *MyQueue) Empty() bool {
  return len(this.rv) == 0
}


/**
 * Your MyQueue object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * param_2 := obj.Pop();
 * param_3 := obj.Peek();
 * param_4 := obj.Empty();
 */
