# Leetcode: 523. Continuous Subarray Sum.
# https://leetcode.com/problems/continuous-subarray-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 479 ms, faster than 13.79% of Ruby online submissions for Continuous Subarray Sum.
# Memory Usage: 226 MB, less than 89.66% of Ruby online submissions for Continuous Subarray Sum.
# 2022.10.26 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_subarray_sum(nums, k)
  return true if 1 == k && nums.size > 1
  pref_sum = Array.new(nums.size+1,0)
  hash = {}
  hash[0] = 0 
  (1..nums.size).each do |j|
    # If curent element is zero.
    if (j-1) < (nums.size - 1) && 0 == nums[j-1] && 0 == nums[j]%k
      return true
    end
    # Shift prev sum one element right.
    # That's why j-1.
    pref_sum[j] = pref_sum[j-1] + nums[j-1] # !
    sum = pref_sum[j]
    (1..(sum/k)).each do |n|
      i = hash[sum - n*k]
      return true if i && j - i >= 2
    end
    hash[sum] = j 
  end
  return false
end
