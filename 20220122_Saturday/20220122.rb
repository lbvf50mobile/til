# Leetcode: 1510. Stone Game IV.
# https://leetcode.com/problems/stone-game-iv/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 684 ms, faster than 100.00% of Ruby online submissions for Stone Game IV.
# Memory Usage: 212.1 MB, less than 100.00% of Ruby online submissions for Stone Game IV.
# @param {Integer} n
# @return {Boolean}
def winner_square_game(n)
  # Based on solution: https://leetcode.com/problems/stone-game-iv/solution/
  dp = Array.new(n+1,false)
  (1...n+1).each do |i|
    (1...(i**0.5).to_i+1).each do |j|
      if false == dp[i-j*j]
        dp[i] = true
        break
      end
    end
  end
  dp[n]
end
