# Leetcode: 152. Maximum Product Subarray.
# https://leetcode.com/problems/maximum-product-subarray/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 148 ms, faster than 43.28% of Ruby online submissions for Maximum Product Subarray.
# Memory Usage: 211.2 MB, less than 94.03% of Ruby online submissions for Maximum Product Subarray
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  # The code is based on:
  # https://leetcode.com/problems/maximum-product-subarray/discuss/48230/Possibly-simplest-solution-with-O(n)-time-complexity
  
  # Store the result that is the max we have found so far.
  answer = nums[0]

  # min_,max_ stores the min/max product of 
  # subarray that ends with the current number nums[i].
  min_,max_ = answer,answer
  (1...nums.size).each do |i|
    # Multiplied by a negative makes big number smaller,
    # small number bigger. So we redefine the extremums
    # by swapping them.
    min_,max_ = max_,min_ if nums[i] < 0
    # Max/min product for the current number is eigher the
    # current number itself or max/min by the previous number
    # time the current one.
    min_ = [nums[i], min_ * nums[i]].min
    max_ = [nums[i], max_ * nums[i]].max
    # The newly computed max value is a candidate four our global result.
    answer = max_ if max_ > answer
  end
  answer
end
