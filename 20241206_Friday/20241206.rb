# Leetcode: 2554. Maximum Number of Integers to Choose From a Range I
# https://leetcode.com/problems/maximum-number-of-integers-to-choose-from-a-range-i
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 92 ms, faster than 100.00% of Ruby online submissions for Maximum
# Number of Integers to Choose From a Range I.
# Memory Usage: 252.4 MB, less than 100.00% of Ruby online submissions for
# Maximum Number of Integers to Choose From a Range I.
# 2024.12.06 Daily Challenge.
# @param {Integer[]} banned
# @param {Integer} n
# @param {Integer} max_sum
# @return {Integer}
def max_count(banned, n, max_sum)
  h = {}
  banned.each do |x|
    h[x] = true
  end
  sum = 0
  counter = 0
  (1..n).each do |x|
    next if h[x]
    new_sum = sum + x
    break if new_sum > max_sum
    sum = new_sum
    counter += 1
   end
  return counter
end
