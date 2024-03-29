# Leetcode: 2707. Extra Characters in a String.
# https://leetcode.com/problems/extra-characters-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 421 ms, faster than 75.00% of Ruby online submissions for Extra
# Characters in a String.
# Memory Usage: 211.7 MB, less than 50.00% of Ruby online submissions for Extra
# Characters in a String.
# 2023.09.02 Daily Challenge.
# @param {String} s
# @param {String[]} dictionary
# @return {Integer}
def min_extra_char(s, dictionary)
  # Based on:
  # https://leetcode.com/problems/extra-characters-in-a-string/solution/
  d = dictionary.to_set
  n = s.size
  dp = Array.new(n+1,0)
  (0...n).reverse_each do |i|
    dp[i] = 1 + dp[i+1]
    (i...n).each do |j|
        curr = s[i..j]
        if d.include?(curr)
          dp[i] = [dp[i], dp[j+1]].min
        end
    end
  end
  return dp[0]
end
