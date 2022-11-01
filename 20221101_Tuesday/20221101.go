// Leetcode: 1706. Where Will the Ball Fall.
// https://leetcode.com/problems/where-will-the-ball-fall/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 23 ms, faster than 91.18% of Go online submissions for Where Will the Ball Fall.
// Memory Usage: 6.7 MB, less than 52.94% of Go online submissions for Where Will the Ball Fall.
// 2022.11.01 Daily Challenge.
var r,c int
var dp [][]int
var g [][]int
func findBall(grid [][]int) []int {
  g = grid
  r,c = len(g), len(g[0])
  initialize_dp()
  answer := make([]int,c)
  for j := 0 ; j < c ; j += 1{
    answer[j] = rec(0, j)
  }
  return answer
}

func rec(i,j int) int {
  // Return predefined value if it was defined.
  if - 2 != dp[i][j]{
    return dp[i][j]
  }
  // Cannot move forward because of the wall.
  if c - 1 == j && 1 == g[i][j] {
    dp[i][j] = - 1
    return -1
  }
  // Cannot step back because of the wall.
  if 0 == j && -1 == g[i][j]{
    dp[i][j] = - 1
    return -1
  }
  // Cannot move forward because of the opposite value.
  if 1 == g[i][j] && g[i][j] != g[i][j + 1] {
    dp[i][j] = - 1
    return -1
  }
  // Cannot move back because of oposite value.
  if -1 == g[i][j] && g[i][j] != g[i][j - 1]{
    dp[i][j] = - 1
    return - 1
  }
  // Last row. 
  if r - 1 == i {
    dp[i][j] = j + g[i][j]
    return dp[i][j]
  }
  return rec(i+1, j + g[i][j])
}


// Fill all dp with -2.
// Because this is an unused value.
func initialize_dp(){
  dp = make([][]int,r)
  for i := 0; i < r; i+=1{
    dp[i] = make([]int,c)
    for j := range dp[i]{
      dp[i][j] = -2
    }
  }
}
