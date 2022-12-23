// Leetcode: 309. Best Time to Buy and Sell Stock with Cooldown.
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Best Time to Buy and Sell Stock with Cooldown.
// Memory Usage: 2.3 MB, less than 60.42% of Go online submissions for Best Time to Buy and Sell Stock with Cooldown.
// 2022.12.23 Daily Challenge.
func maxProfit(prices []int) int {
  n := len(prices)
  if 0 == n { return 0 }
  l := n - 1
  // Each array contain profit.
  s0 := make([]int,n) // Do nothing day. Have nothing.
  s1 := make([]int,n) // Buy day. Have someting. 
  s2 := make([]int,n) // Sell something.
  s0[0] = 0 // First day do nothing. 0 profit.
  s1[0] = - prices[0] // Buy something, state having something.
  s2[0] = - 10000 // Selling day. Set minimum to not select.
  for j := 1 ; j < n ; j += 1{
    i := j - 1
    s0[j] = max(s0[i],s2[i]) 
    s1[j] = max(s0[i] - prices[j], s1[i])
    s2[j] = s1[i] + prices[j]
  }
  return max3(s0[l],s1[l],s2[l])
}

func max(a,b int) int{
  if a > b {
    return a 
  } else {
    return b
  }
}
func max3(a,b,c int) int {
  ans := a 
  if b > ans { ans = b }
  if c > ans { ans = c }
  return ans
}
