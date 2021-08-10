# Leetcode: 926. Flip String to Monotone Increasing.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3876/
# https://leetcode.com/problems/flip-string-to-monotone-increasing/
# https://leetcode.com/problems/flip-string-to-monotone-increasing/solution/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} s
# @return {Integer}
def min_flips_mono_incr(s)
  prfx = [0]
  s.chars.map(&:to_i).each{|x| prfx.push(prfx[-1] + x)}
  len = s.size
  ans = []
  (0..len).each{|j|
    ans.push(prfx[j] + len - j - (prfx[-1] - prfx[j]))
  }
  ans.min
end
