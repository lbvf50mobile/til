# Leetcode: 714. Best Time to Buy and Sell Stock with Transaction Fee.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
class Solution:
    def maxProfit(self, prices: List[int], fee: int) -> int:
        # Copied from:
        # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/solution/
        n = len(prices)
        hold, free = [0] * n, [0] * n
        
        # In order to hold a stock on day 0, we have no other choice but to buy it for prices[0].
        hold[0] = -prices[0]
        
        for i in range(1, n):
            hold[i] = max(hold[i - 1], free[i - 1] - prices[i])
            free[i] = max(free[i - 1], hold[i - 1] + prices[i] - fee)
        
        return free[-1]
