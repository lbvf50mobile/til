# Leetcode: 1015. Smallest Integer Divisible by K.
# https://leetcode.com/problems/smallest-integer-divisible-by-k/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 113 ms, faster than 100.00% of Ruby online submissions for Smallest Integer Divisible by K.
# Memory Usage: 209.7 MB, less than 100.00% of Ruby online submissions for Smallest Integer Divisible by K.
# @param {Integer} k
# @return {Integer}
def smallest_repunit_div_by_k(k)
  # Solution based on:
  # https://leetcode.com/problems/smallest-integer-divisible-by-k/solution/
  reminder = 0
  (1..k).each do |number|
    reminder = (reminder*10 + 1) % k
    return number if reminder.zero?
  end
  return -1
end
