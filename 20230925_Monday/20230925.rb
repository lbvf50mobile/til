# Leetcode: 389. Find the Difference.
# https://leetcode.com/problems/find-the-difference/
# @param {String} s
# @param {String} t
# @return {Character}
# Wrong soluition.
def find_the_difference(s, t)
  s.size.times do |i|
    return t[i] if s[i] != t[i]
  end
  return t[-1]
end
