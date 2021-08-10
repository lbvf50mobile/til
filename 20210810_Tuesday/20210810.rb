# Leetcode: 926. Flip String to Monotone Increasing.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3876/
# https://leetcode.com/problems/flip-string-to-monotone-increasing/
# https://leetcode.com/problems/flip-string-to-monotone-increasing/solution/
# @param {String} s
# @return {Integer}
def min_flips_mono_incr(s)
  prfx = [0]
  s.chars.map(&:to_i).each{|x| prfx.push(prfx.last + x)}
  len = s.size
  ans = prfx[0] + len - 0 - (prfx.last - prfx[0])
  (1...len).each{|j|
    value = prfx[j] + len - j - (prfx.last - prfx[j])
    ans = value if value < ans
  }
  ans
end
