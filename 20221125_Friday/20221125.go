// Leetcode: 907. Sum of Subarray Minimums.
// https://leetcode.com/problems/sum-of-subarray-minimums/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// 2022.11.25 Daily Challenge.
import "fmt"
var p  = fmt.Println
var mod int = 1000000007
type stack struct{
  data []int
}
func (s * stack) init(){
  s.data = make([]int,0)
}
func (s * stack) pop() int{
  ans := s.data[len(s.data)-1]
  s.data = s.data[0:len(s.data)-1]  // Fix. 
  return ans
}
func (s * stack) push(x int){
  s.data = append(s.data, x)
}
func (s * stack) empty() bool{
  return len(s.data) == 0
}
func (s * stack) last() int {
  return s.data[len(s.data)-1]
}

func sumSubarrayMins(arr []int) int {
  // Based on:
  // https://leetcode.com/problems/sum-of-subarray-minimums/solution/
  sum := 0
  var s stack
  s.init()
  for i := 0 ; i <= len(arr); i += 1{
    for ; (!s.empty()) && ( i == len(arr) || arr[s.last()] >= arr[i]);  {
      mid := s.pop()
      lb := - 1
      if(!s.empty()) {lb = s.last()}
      rb := i
      count := (mid - lb) * (rb - mid)
      sum +=  (count * arr[mid])%mod
      sum = sum % mod // Fix.
    }
    s.push(i)
  }
  return sum
}
