# Leetcode: 989. Add to Array-Form of Integer.
# https://leetcode.com/problems/add-to-array-form-of-integer/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 421 ms, faster than 14.29% of Ruby online submissions for Add to Array-Form of Integer.
# Memory Usage: 253 MB, less than 7.14% of Ruby online submissions for Add to Array-Form of Integer.
# 2023.02.15 Daily Challenge.
# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  a = 0
  num.each do |x|
    a *= 10
    a += x
  end
  b = a + k
  b.to_s.chars.map(&:to_i)
end
