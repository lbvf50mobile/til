# Leetcode: 1413. Minimum Value to Get Positive Step by Step Sum.
# https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 60 ms, faster than 100.00% of Ruby online submissions for Minimum Value to Get Positive Step by Step Sum.
# Memory Usage: 210 MB, less than 100.00% of Ruby online submissions for Minimum Value to Get Positive Step by Step Sum.
# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  # Important! Always read all examples before starting coding!
  ans = 0
  sum = 0
  nums.each do |el|
    sum += el
    if sum < 1
      ans += 1 - sum
      sum = 1
    end
  end
  ans == 0 ? 1 : ans
end
