# Leetcode: 389. Find the Difference.
# https://leetcode.com/problems/find-the-difference/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 76 ms, faster than 64.86% of Ruby online submissions for Find the
# Difference.
# Memory Usage: 211 MB, less than 59.46% of Ruby online submissions for Find the
# Difference.
# 2023.09.25 Daily Challenge.
# @param {String} s
# @param {String} t
# @return {Character}
# Wrong soluition.
def find_the_difference(s, t)
  a, b = Array.new(26,0), Array.new(26,0)
  s.chars.each{|x| a[x.ord - ?a.ord] += 1}
  t.chars.each{|x| b[x.ord - ?a.ord] += 1}
  26.times do |i|
    return (i + ?a.ord).chr if a[i] + 1 == b[i]
  end
  raise "Unknown."
end
