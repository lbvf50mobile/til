# Leetcode: 162. Find Peak Element.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3812/
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  return 0 if 1 == nums.size
  return 0 if nums[0] > nums[1]
  return nums.size - 1 if nums[nums.size - 1] > nums[nums.size - 2]
  (1...nums.size-1).each do |i|
    return i if nums[i-1] < nums[i] && nums[i] > nums[i+1]
  end
  raise "Can not find the Peak Element."  
end
