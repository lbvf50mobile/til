// Leetcode: 901. Online Stock Span.
// https://leetcode.com/problems/online-stock-span/
import "math"
import "fmt"
var p = fmt.Println
type StockSpanner struct {
  i int // inedex of last element. Number of an input price.
  sv []int // stack values.
  si [] int // stack indices.
}


func Constructor() StockSpanner {
  data := StockSpanner{i:0}
  data.i = 0
  data.sv = make([]int,1)
  data.si = make([]int,1) 
  data.sv[0] = int(math.Pow10(7))
  data.si[0] = 0
  return data
}


func (this *StockSpanner) Next(price int) int {
 p(price) 
  this.i += 1
  last := len(this.sv) - 1
  for ; 0 < len(this.sv) && this.sv[last] <= price ; last -= 1 {
    this.sv = this.sv[0:last]
    this.si = this.si[0:last]
  }
  this.sv = append(this.sv,price)
  this.si = append(this.si,this.i)
 p(this.sv)
  s := len(this.si)
  return  this.i - this.si[s-2]
  
}


/**
 * Your StockSpanner object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Next(price);
 */
