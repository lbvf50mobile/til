# Leetcode: 1647. Minimum Deletions to Make Character Frequencies Unique.
# https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 506 ms, faster than 100.00% of Ruby online submissions for Minimum
# Deletions to Make Character Frequencies Unique.
# Memory Usage: 226.2 MB, less than 66.67% of Ruby online submissions for
# Minimum Deletions to Make Character Frequencies Unique.
# 2023.09.12 Daily Challenge.
# @param {String} s
# @return {Integer}
def min_deletions(s)
  a = Array.new(26,0)
  s.chars.each do |x|
    a[x.ord - ?a.ord] += 1
  end
  a.sort_by!{|x| -x}
  ans = 0
  # Further in the array all elements must be smaller or equal to
  # the current value minus one.
  soe = a[0] - 1 # smaller or equal. Next value must be.
  soe = 0 if soe < 0 # but smallest possible value is 0.
  (1...a.size).each do |i|
    q = a[i] # current value.
    # Time to trim.
    if q > soe
      ans += q - soe
      q = soe
    end
    # Time to set new smaller or equal value.
    soe = q - 1
    soe = 0 if soe < 0
  end
  return ans
end
