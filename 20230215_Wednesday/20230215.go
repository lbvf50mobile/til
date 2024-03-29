// Leetcode: 989. Add to Array-Form of Integer.
// https://leetcode.com/problems/add-to-array-form-of-integer/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 28 ms, faster than 70.83% of Go online submissions for Add to Array-Form of Integer.
// Memory Usage: 6.8 MB, less than 56.25% of Go online submissions for Add to Array-Form of Integer.
// 2023.02.15 Daily Challenge.
import "fmt"
var p = fmt.Println
func addToArrayForm(num []int, k int) []int {
  // Convert k to array.
  a := intToArray(k)
  // Reverse both slices. To make them in the same direction.
  a = reverseArray(a)
  b := num 
  // p("a",a)
  // p("b",b)
  // Set remainder as zero.
  rem := 0 // remainder
  sum := 0
  // Create a loop that fills array.
  ans := make([]int,0)
  for i,j := len(a)-1, len(b)-1; i >= 0 || j >= 0; i,j = i-1,j-1{
    ax,bx := 0, 0
    if i >= 0 {
      ax = a[i]
    }else{
      ax = 0
    }
    if j >= 0 {
      bx = b[j]
    }else{
      bx = 0
    }
    sum = ax + bx + rem
    rem = sum/10
    ans = append(ans, sum%10)
  }
  if 0 != rem {
    ans = append(ans, 1)
  }
  // Reverse array.
  ans = reverseArray(ans)
  // Return answer.
  return ans
}

func intToArray(x int) []int{
  ans := make([]int,0)
  for true {
    ans = append(ans, x%10)
    x /= 10
    if 0 == x {break}
  }
  return ans
}

func reverseArray(x []int) []int{
  for i,j := 0, len(x)-1; i < j; i,j = i+1,j-1 {
    x[i],x[j] = x[j],x[i]
  }
  return x
}
