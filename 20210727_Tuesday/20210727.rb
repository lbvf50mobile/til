# Leetcode: 16. 3Sum Closest.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3828/
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  diff = nil
  n = nums.sort
  (0...n.size-2).each do |i|
    j,k = i+1, n.size-1
    while j < k
      sum = n[i] + n[j] + n[k]
      if diff.nil? || (target-sum).abs < diff.abs
        diff = target-sum
      elsif sum < target
        j += 1
      else
        k -= 1
      end
    end
      break if 0 == diff
  end
    target - diff
end
