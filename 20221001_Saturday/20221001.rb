# Leetcode: 91. Decode Ways.
# https://leetcode.com/problems/decode-ways/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 179 ms, faster than 11.32% of Ruby online submissions for Decode Ways.
# Memory Usage: 211.1 MB, less than 45.28% of Ruby online submissions for Decode Ways.
# @param {String} s
# @return {Integer}
def num_decodings(s)
  dp = Array.new(s.size+1,0)
  dp[0] = 1
  s.chars.each_with_index do |c,i|
    digit = c.to_i
    if ?0 == c
      next
    elsif digit.between?(3,9)
      dp[i+1] += dp[i]
    elsif i < (s.size - 1) && s[i..i+1].to_i.between?(10,26)
      dp[i+1] += dp[i]
      dp[i+2] += dp[i]
    else
      dp[i+1] += dp[i]
    end
  end
  dp.last
end
