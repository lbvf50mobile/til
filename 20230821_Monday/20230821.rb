# Leetcode: 459. Repeated Substring Pattern.
# https://leetcode.com/problems/repeated-substring-pattern/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 161 ms, faster than 33.33% of Ruby online submissions for Repeated
# Substring Pattern.
# Memory Usage: 223.8 MB, less than 50.00% of Ruby online submissions for
# Repeated Substring Pattern.
# 2023.08.21 Daily Challenge.
# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  (1..s.size/2).each do |j|
    x = s[0...j]
    if 0 == s.size % j
      return true if x * (s.size/j) == s
    end
  end
  return false
end
