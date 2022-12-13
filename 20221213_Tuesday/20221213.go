// Leetcode: 931. Minimum Falling Path Sum.
// https://leetcode.com/problems/minimum-falling-path-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 22 ms, faster than 56.98% of Go online submissions for Minimum Falling Path Sum.
// Memory Usage: 5.5 MB, less than 81.40% of Go online submissions for Minimum Falling Path Sum.
// 2022.12.13 Daily Challenge.
const max = 1000000
var m [][]int
var n int
func minFallingPathSum(matrix [][]int) int {
  m,n = matrix, len(matrix)
  for i:=1; i < n; i += 1{
    for j:=0; j < n; j += 1 {
      a := getVal(i-1,j-1)
      b := getVal(i-1,j)
      c := getVal(i-1,j+1)
      m[i][j] += minThree(a,b,c)
    }
  }
  return minVal(m[n-1])
}
func getVal(i,j int) int {
  if ! (0 <= i && i < n) { return max}
  if ! (0 <= j && j < n) { return max}
  return m[i][j]
}
func minThree(a,b,c int) int{
  ans := a
  if b < ans { ans = b}
  if c < ans { ans = c}
  return ans
}
func minVal(x []int) int{
  ans := x[0]
  for _,v := range x {
    if v < ans { ans = v}
  }
  return ans
}
