# Leetcode: 2090. K Radius Subarray Averages.
# https://leetcode.com/problems/k-radius-subarray-averages/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 659 ms, faster than 75.00% of Ruby online submissions for K Radius
# Subarray Averages.
# Memory Usage: 233.6 MB, less than 25.00% of Ruby online submissions for K
# Radius Subarray Averages.
# 2023.06.20 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}

def get_averages(nums, k)
  # 0 1 2 3 4 5 6 7: k = 2
  # 1 2 i 1 2
  #     k
  answer = Array.new(nums.size, -1)
  return answer if nums.size < k*2 + 1
  # Step one generate sum.
  sum = nums[0...(k*2 + 1)].sum 
  amount = 2*k+1
  answer[k] = (sum/amount)
  return answer if nums.size == k*2 + 1
  (k+1...nums.size - k).each do |i|
    sum = sum - nums[i-k-1] + nums[i+k]
    answer[i] = (sum/amount)
  end
  return answer
end
