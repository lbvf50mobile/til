// Leetcode: 121. Best Time to Buy and Sell Stock.
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 122 ms, faster than 58.26% of Go online submissions for Best Time to Buy and Sell Stock.
// Memory Usage: 9 MB, less than 8.48% of Go online submissions for Best Time to Buy and Sell Stock.
// 2023.02.25 Daily Challenge.
func maxProfit(prices []int) int {
  mn, profit := prices[0], 0
  for _, v := range prices {
    mn = min(mn,v)
    profit = max(profit, v - mn)
  }
  return profit
}

func max(a,b int) int{
  if a > b {
    return a 
  } else {
    return b
  }
}
func min(a,b int) int{
  if a < b {
    return a
  } else {
    return b
  }
}
