# Leetcode: 258. Add Digits.
# https://leetcode.com/problems/add-digits/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 84 ms, faster than 42.31% of Ruby online submissions for Add Digits.
# Memory Usage: 210.9 MB, less than 92.31% of Ruby online submissions for Add
# Digits.
# 2023.04.26 Daily Challenge.
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  # Based on Leetcode's solution.
  0 == num ? 0 : 1 + (num-1)%9
end
