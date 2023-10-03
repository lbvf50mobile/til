# Leetcode: 1512. Number of Good Pairs.
# https://leetcode.com/problems/number-of-good-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 60 ms, faster than 62.50% of Ruby online submissions for Number of
# Good Pairs.
# Memory Usage: 211.2 MB, less than 10.00% of Ruby online submissions for Number
# of Good Pairs.
# 2023.10.03 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  h = {}
  ans = 0
  nums.each do |x|
    h[x] ||= 0
    ans += h[x]
    h[x] += 1
  end
  return ans
end

