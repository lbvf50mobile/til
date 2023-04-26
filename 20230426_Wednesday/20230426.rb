# Leetcode: 258. Add Digits.
# https://leetcode.com/problems/add-digits/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 23.08% of Ruby online submissions for Add Digits.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Add
# Digits.
# 2023.04.26 Daily Challenge.
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  while num >= 10
    num = num.to_s.chars.map(&:to_i).sum
  end
  return num
end
