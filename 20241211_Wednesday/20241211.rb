# Leetcode: 2779. Maximum Beauty of an Array After Applying Operation
# https://leetcode.com/problems/maximum-beauty-of-an-array-after-applying-operation/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 150 ms, faster than 100.00% of Ruby online submissions for Maximum
# Beauty of an Array After Applying Operation.
# Memory Usage: 226.2 MB, less than 100.00% of Ruby online submissions for
# Maximum Beauty of an Array After Applying Operation.
# 2024.12.11 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_beauty(nums, k)
  nums.sort!
  left = 0
  max_beauty = 0
  (0...nums.size).each do |right|
    while nums[right] - nums[left] > 2 * k
      left += 1
    end
    max_beauty = [max_beauty, right - left + 1].max
  end
  return max_beauty
end
