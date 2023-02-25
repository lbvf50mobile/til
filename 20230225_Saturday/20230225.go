// Leetcode: 121. Best Time to Buy and Sell Stock.
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 133 ms, faster than 19.49% of Go online submissions for Best Time to Buy and Sell Stock.
// Memory Usage: 9.2 MB, less than 5.60% of Go online submissions for Best Time to Buy and Sell Stock.
// 2023.02.25 Daily Challenge.
func maxProfit(prices []int) int {
  n := len(prices)
  stack := make([]int,n) 
  j := 0
  stack[0] = prices[0]
  ans, diff, x := 0, 0, 0
  for i := 1; i < n; i +=1 {
    x = prices[i]
    // Pop till stack[j] < x;
    for j >= 0 && stack[j] >= x {
      j -= 1 // it is pop.
    }
    j += 1
    stack[j] = x // it is push.
    if j > 0 {
      diff = stack[j] - stack[0]
      if ans < diff { ans = diff }
    }
  }
  return ans
}
