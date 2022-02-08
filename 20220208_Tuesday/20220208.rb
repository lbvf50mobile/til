# Leetcode: 258. Add Digits.
# https://leetcode.com/problems/add-digits/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 123 ms, faster than 12.50% of Ruby online submissions for Add Digits.
# Memory Usage: 211.1 MB, less than 6.25% of Ruby online submissions for Add Digits.
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  while num > 9; num = digits_sum(num); end;
  num
end

def digits_sum x
  x.to_s.chars.map(&:to_i).sum
end
