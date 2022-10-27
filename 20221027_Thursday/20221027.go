// Leetcode: 835. Image Overlap.
// https://leetcode.com/problems/image-overlap/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 46 ms, faster than 50.00% of Go online submissions for Image Overlap.
// Memory Usage: 3 MB, less than 50.00% of Go online submissions for Image Overlap.
// 2022.10.27 Daily Challenge.
var g1 [][]int
var g2 [][]int
var n int
var max int
func largestOverlap(img1 [][]int, img2 [][]int) int {
  g1,g2,n,max = img1, img2, len(img1),0
  for i :=0; i < n; i+=1{
    for j:=0; j < n; j+=1{
       upleft(i,j)
       upright(i,j)
       downright(i,j)
       downleft(i,j)
    }
  }
  return max
}
func upleft(i int, j int) int{
  i1, j1 := 0, 0 // Always top-left.
  i2, j2 := i, j // Changes.
  il, jl := n - i, n - j
  ans := 0
  for di := 0 ; di < il; di += 1{
    for dj := 0 ; dj < jl; dj += 1{
      c1 := g1[i1+di][j1 + dj]
      c2 := g2[i2+di][j2 + dj]
      if (1 == c1 && 1 == c2){
        ans += 1
      }
    }
  }
  if ans > max {
    max = ans
  }
  return ans
}
func upright(i int, j int) int{
  i1, j1 := 0, n - 1
  i2, j2 := i, j
  il, jl := n - i, j + 1
  ans := 0
  for di := 0 ; di < il; di += 1{
    for dj := 0 ; dj < jl; dj += 1{
      c1 := g1[i1+di][j1 - dj]
      c2 := g2[i2+di][j2 - dj]
      if (1 == c1 && 1 == c2){
        ans += 1
      }
    }
  }
  if ans > max {
    max = ans
  }
  return ans
}
func downright(i int, j int) int{
  i1, j1 := n - 1, n - 1
  i2, j2 := i, j
  il, jl := i + 1, j + 1
  ans := 0
  for di := 0 ; di < il; di += 1{
    for dj := 0 ; dj < jl; dj += 1{
      c1 := g1[i1-di][j1 - dj]
      c2 := g2[i2-di][j2 - dj]
      if (1 == c1 && 1 == c2){
        ans += 1
      }
    }
  }
  if ans > max {
    max = ans
  }
  return ans
}
func downleft(i int, j int) int{
  i1, j1 := n - 1, 0 
  i2, j2 := i, j
  il, jl := i + 1, n - j 
  ans := 0
  for di := 0 ; di < il; di += 1{
    for dj := 0 ; dj < jl; dj += 1{
      c1 := g1[i1-di][j1 + dj]
      c2 := g2[i2-di][j2 + dj]
      if (1 == c1 && 1 == c2){
        ans += 1
      }
    }
  }
  if ans > max {
    max = ans
  }
  return ans
}
