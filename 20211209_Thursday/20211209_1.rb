# Leetcode: 790. Domino and Tromino Tiling.
# https://leetcode.com/problems/domino-and-tromino-tiling/
# = = = = = = =
# Accepted.
# Thaks God!
# = = = = = = =
# Runtime: 72 ms, faster than 50.00% of Ruby online submissions for Domino and Tromino Tiling.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for Domino and Tromino Tiling.
# @param {Integer} n
# @return {Integer}
def num_tilings(n)
  dp = Array.new(n+2).map{ Array.new(4,0)}
  states = [[0,1,2,3],[2,3],[1,3],[0]]
  dp[1][0] = 1
  (1..n).each do |pos|
    (0...4).each do |state|
      number = dp[pos][state]
      states[state].each do |next_state|
        dp[pos+1][next_state] += number
      end
    end
  end
  dp[n+1][0] % (10**9 + 7)
end
