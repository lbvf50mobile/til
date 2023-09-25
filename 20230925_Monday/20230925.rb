# Leetcode: 389. Find the Difference.
# https://leetcode.com/problems/find-the-difference/
# @param {String} s
# @param {String} t
# @return {Character}
# Wrong soluition.
require "set"
def find_the_difference(s, t)
  (Set.new(t.chars) - Set.new(s.chars)).to_a[0]
end
