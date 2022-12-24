// Leetcode: 790. Domino and Tromino Tiling.
// https://leetcode.com/problems/domino-and-tromino-tiling/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 37.50% of Go online submissions for Domino and Tromino Tiling.
// Memory Usage: 2.6 MB, less than 6.25% of Go online submissions for Domino and Tromino Tiling.
// 2022.12.24 Daily Challenge.
func numTilings(n int) int {
  // Create array with n+2 elements,
  // one element to work with 1-based inicies.
  // And one element to avoid out of bound checks.
  dp := make([][]int, n + 2)
  x := 1000000007
  // There are four possible states for the column.
  for i := 0 ; i < n+2 ; i += 1 {
    dp[i] = make([]int,4) 
  }
  // There is only one way to get empty states for a first row.
  dp[1][0] = 1
  for i := 1 ; i <= n ; i += 1 {
    j := i + 1
    // Beging from "Both" State.
    // Order of states is important.
    // "Both" state for i filled in "Empty" state.
    cur := dp[i][3]
    dp[j][0] += cur
    // Continue with an "Empty" State.
    cur = dp[i][0]
    dp[i][3] += cur // Put a vertical domino. On a the current column.
    dp[j][0] += cur
    dp[j][3] += cur // Two gorizontal dominos.
    dp[j][1] += cur
    dp[j][2] += cur
    // "Top" State.
    cur = dp[i][1]
    dp[j][2] += cur
    dp[j][3] += cur
    // "Bottom" State.
    cur = dp[i][2]
    dp[j][1] += cur
    dp[j][3] += cur

    dp[i][0] %= x
    dp[i][1] %= x
    dp[i][2] %= x
    dp[i][3] %= x
    dp[j][0] %= x
    dp[j][1] %= x
    dp[j][2] %= x
    dp[j][3] %= x
  }
  // Return "Both" of the last column.
  return dp[n][3]
}
