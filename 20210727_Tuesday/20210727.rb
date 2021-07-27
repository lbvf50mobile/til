# Leetcode: 16. 3Sum Closest.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3828/
# And that brings to TLE.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  sum = nums[0...3].sum
  min = (target-sum).abs
  (0...nums.size-2).each do |i|
    (i+1...nums.size-1).each do |j|
      (j+1...nums.size).each do |k|
        if min > (target-nums[i]-nums[j]-nums[k]).abs
          min = (target-nums[i]-nums[j]-nums[k]).abs
          sum = nums[i]+nums[j]+nums[k] 
        end
      end
    end
  end
  return sum
end
