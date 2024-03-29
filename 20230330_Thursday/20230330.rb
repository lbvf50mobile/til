# Leetcode: 87. Scramble String.
# https://leetcode.com/problems/scramble-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 322 ms, faster than 25.00% of Ruby online submissions for Scramble
# String.
# Memory Usage: 211.3 MB, less than 25.00% of Ruby online submissions for
# Scramble String.
# 2023.03.30 Daily Challenge.
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def is_scramble(s1, s2)
  # Based on:
  # https://leetcode.com/problems/scramble-string/solution/
  n = s1.size
  dp = Array.new(n+1).map{ Array.new(n).map{Array.new(n,false)}}
  n.times do |i|
    n.times do |j|
      dp[1][i][j] = (s1[i] == s2[j])
    end
  end
  (2..n).each do |l|
    (0...n+1-l).each do |i|
      (0...n+1-l).each do |j|
        (1...l).each do |nl|
          dp1 = dp[nl][i]
          dp2 = dp[l-nl][i+nl]
          a = dp1[j] && dp2[j+nl]
          b = dp1[j+l-nl] && dp2[j]
          dp[l][i][j] = true if a
          dp[l][i][j] = true if b
        end
      end
    end
  end
  dp[n][0][0]
end
