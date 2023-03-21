# Leetcode: 2348. Number of Zero-Filled Subarrays.
# https://leetcode.com/problems/number-of-zero-filled-subarrays/
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 206 ms, faster than 100.00% of Ruby online submissions for Number of Zero-Filled Subarrays.
# Memory Usage: 223.1 MB, less than 100.00% of Ruby online submissions for Number of Zero-Filled Subarrays.
# 2023.03.21 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def zero_filled_subarray(nums)
  zero_counter = 0
  answer = 0
  nums.each do |x|
    if 0 == x
      zero_counter += 1
      answer += zero_counter
    else
      zero_counter = 0
    end
  end
  return answer 
end
