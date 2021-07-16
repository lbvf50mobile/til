# Leetcode: 4Sum.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3816/
# TLE.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  ans = []
  nums.sort!
  (0...nums.size-3).each do |i|
    (i+1...nums.size-2).each do |j|
      (j+1...nums.size-1).each do |k|
        (k+1...nums.size).each do |l|
          if target == nums[i] + nums[j] + nums[k] + nums[l]
            tmp = [nums[i],nums[j],nums[k],nums[l]]
            ans.push(tmp)
          end
        end
      end
    end
  end
  ans.uniq
end
