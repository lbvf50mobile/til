# Leetcode: 1155. Number of Dice Rolls With Target Sum.
# https://leetcode.com/problems/number-of-dice-rolls-with-target-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 690 ms, faster than 87.50% of Ruby online submissions for Number of Dice Rolls With Target Sum.
# Memory Usage: 211.8 MB, less than 100.00% of Ruby online submissions for Number of Dice Rolls With Target Sum.
# @param {Integer} n
# @param {Integer} k
# @param {Integer} target
# @return {Integer}
def num_rolls_to_target(n, k, target)
  # Reach row is a dice.
  # Each column is a value.
  dp = Array.new(n).map{ Array.new(target+1,0)}
  mod = (10**9) + 7

  # Fill first row.
  # There is only one way to fill the column.
  # But only if there is a face on a dice for this collumn.
  (1..target).each do |col|
    break if col > k
    dp[0][col] = 1  
  end
  # Get data from the previous dice. From the previous row.
  # Current is added to previous.
  (1...n).each do |row|
    (1..target).each do |col|
      (1..k).each do |face|
        next if 0 > col - face # Fixed here.
        dp[row][col] = (dp[row][col] + dp[row-1][col - face]) % mod
      end
    end
  end
  dp[n-1][target]
end
