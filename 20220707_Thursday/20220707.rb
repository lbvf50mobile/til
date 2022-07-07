# Leetcode: 97. Interleaving String.
# https://leetcode.com/problems/interleaving-string/
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  a = (s1+s2).chars.sort.tally.values.join(?,)
  b = s3.chars.sort.tally.values.join(?,)
  a == b
end
