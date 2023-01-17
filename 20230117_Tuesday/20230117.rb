# Leetcode: 926. Flip String to Monotone Increasing.
# https://leetcode.com/problems/flip-string-to-monotone-increasing/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 351 ms, faster than 60.00% of Ruby online submissions for Flip String to Monotone Increasing.
# Memory Usage: 222 MB, less than 20.00% of Ruby online submissions for Flip String to Monotone Increasing.
# 2023.01.17 Daily Challenge.
# @param {String} s
# @return {Integer}
def min_flips_mono_incr(s)
  # Based on:
  # https://leetcode.com/problems/flip-string-to-monotone-increasing/solution/
  s = s.chars.map{|x| x.to_i}
  m = s.count{|x| 0 == x}
  ans = m
  s.each do |x|
    if 0 == x
      m -= 1
      ans = [m,ans].min
    else
      m += 1
    end
  end
  return ans
end
