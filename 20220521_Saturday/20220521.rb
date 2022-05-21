# Leetcode: 322. Coin Change.
# https://leetcode.com/problems/coin-change/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 770 ms, faster than 75.21% of Ruby online submissions for Coin Change.
# Memory Usage: 217.7 MB, less than 39.67% of Ruby online submissions for Coin Change.
# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  # Let's use pull dp.
  # Ok there is 0 ways to get 0.
  return 0 if 0 == amount

  # Then need to get minimal possible way
  # to fullfill the current amount.
  # And this way is calculated buy trying to
  # use all possible coins.

  # Array of amounts.
  dp = Array.new(amount+1,nil)
  dp[0] = 0

  # Trying to reach previos amount by a coin
  # previous amount must be already reached.
  (1..amount).each do |i|
    min = nil
    coins.each do |c|
      next if i - c < 0
      next if dp[i-c].nil?
      if min.nil?
        min = dp[i-c]
      else
        min = dp[i-c] if dp[i-c] < min
      end
    end
    dp[i] = min + 1 if min
  end
  dp[amount].nil? ? -1 : dp[amount]
end
