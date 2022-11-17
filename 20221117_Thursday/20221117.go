// Leetcode: 223. Rectangle Area.
// https://leetcode.com/problems/rectangle-area/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 18 ms, faster than 67.31% of Go online submissions for Rectangle Area.
// Memory Usage: 6.2 MB, less than 100.00% of Go online submissions for Rectangle Area.
// 2022.11.17 Daily Challenge.
func computeArea(ax1 int, ay1 int, ax2 int, ay2 int, bx1 int, by1 int, bx2 int, by2 int) int {
  // 'A' area + 'B' area - (A&B)area.
  a := area(ax1,ax2,ay1,ay2)
  b := area(bx1,bx2,by1,by2)
  c := intersection(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2) 
  return a + b - c
}
func intersection(ax1 int, ay1 int, ax2 int, ay2 int, bx1 int, by1 int, bx2 int, by2 int) int {
  // Intersection X.
  // 'a' starts before 'b' ends. ('a' is not too right.)
  // 'a' ends after 'b' starts.  ('a' is not too left.)
  if !(ax1 <= bx2 && bx1 <= ax2) {return 0}
  // Intersection Y.
  // 'A' start before 'B' ends. ('A' is not too. right.)
  // 'B' starts before 'A' ends. ('A' is not too left.) 
  if !(ay1 <= by2 && by1 <= ay2) {return 0}
  // Starts before end, ends after start.
  zx1 := max(ax1,bx1)
  zx2 := min(ax2,bx2)
  zy1 := max(ay1,by1)
  zy2 := min(ay2,by2)
  return area(zx1,zx2,zy1,zy2)
}
func area(x1,x2,y1,y2 int) int {
  return abs(x2-x1)*abs(y2-y1)
}
func min(a int, b int) int {
  if a < b {
    return a
  }
  return b
}
func max(a int, b int) int {
  if a > b {
    return a
  }
  return b
}
func abs(a int) int{
  if a < 0 {
    return - a
  }
  return a
}
