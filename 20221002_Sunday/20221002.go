// Leetcode: 1155. Number of Dice Rolls With Target Sum.
// https://leetcode.com/problems/number-of-dice-rolls-with-target-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 24 ms, faster than 61.36% of Go online submissions for Number of Dice Rolls With Target Sum.
// Memory Usage: 5.3 MB, less than 72.73% of Go online submissions for Number of Dice Rolls With Target Sum.
func numRollsToTarget(n int, k int, target int) int {
  dp := make([][]int,n)
  mod := 1000000007
  for i,_ := range(dp){
    dp[i] = make([]int, target+1)
  }
  for col := 1; col <= target; col +=1{
    if col > k {break}
    dp[0][col] = 1
  }
  for row := 1; row < n; row +=1{
    for col := 1; col <= target; col +=1 {
      for face := 1; face <= k; face += 1{
        if (0 > col - face) {continue}
        dp[row][col] = (dp[row][col] + dp[row-1][col-face]) % mod
      }
    }
  }
  return dp[n-1][target]
}
