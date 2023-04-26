# Leetcode: 258. Add Digits.
# https://leetcode.com/problems/add-digits/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 23.08% of Ruby online submissions for Add Digits.
# Memory Usage: 211.1 MB, less than 7.69% of Ruby online submissions for Add
# Digits.
# 2023.04.26 Daily Challenge.
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  # Based on Leetcode's solution.
  return 0 if 0 == num
  return 9 if 0 == num % 9
  return num % 9
end
