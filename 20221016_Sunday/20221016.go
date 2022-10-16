// Leetcode: 1335. Minimum Difficulty of a Job Schedule.
// https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 76.74% of Go online submissions for Minimum Difficulty of a Job Schedule.
// Memory Usage: 2.5 MB, less than 83.72% of Go online submissions for Minimum Difficulty of a Job Schedule.
// 2022.10.16. Daily Challenge.
func minDifficulty(jobDifficulty []int, d int) int {
  // Based on:
  // https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/discuss/490316/JavaC%2B%2BPython3-DP-O(nd)-Solution
  n, inf := len(jobDifficulty), 4294967295
  dp := make([][]int, d+1)
  fill_slice(dp, d+1, n+1, inf)
  for de := 1; de <= d ; de +=1 {
    for i := 0; i <= n-de; i +=1{
      maxd := 0
      for j := i; j <= n-de; j += 1{
        maxd = max(maxd, jobDifficulty[j])
        dp[de][i] = min(dp[de][i], maxd + dp[de-1][j+1])
      }
    }
  }
  if dp[d][0] < inf {
    return dp[d][0]
  }
  return -1
}

func fill_slice(slice [][]int, rows int, cols int, value int){
  for i:=0; i < rows; i += 1{
    slice[i] = make([]int, cols)
    for j :=0 ; j < cols; j += 1{
      if j == cols - 1 {
        slice[i][j] = 0
      }else{
        slice[i][j] = value 
      }
    }
  }
}
func max(a int,b int) int{
  if a > b {
    return a
  }
  return b
}
func min(a int, b int) int{
  if a < b {
    return a
  }
  return b
}
