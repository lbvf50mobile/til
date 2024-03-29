# Leetcode: 1502. Can Make Arithmetic Progression From Sequence.
# https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 80 ms, faster than 80.00% of Ruby online submissions for Can Make
# Arithmetic Progression From Sequence.
# Memory Usage: 211.4 MB, less than 13.33% of Ruby online submissions for Can
# Make Arithmetic Progression From Sequence.
# 2023.06.06 Daily Challenge.
# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  a = arr.sort
  d = a[1] - a[0]
  (2...a.size).each do |i|
    return false if a[i] - a[i-1] != d
  end
  return true
end
