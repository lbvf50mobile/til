# Leetcode: 300. Longest Increasing Subsequence.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3808/
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  global_max = 0
  dp = Array.new(nums.size,1)
  nums.each_with_index do |el,i|
    local_max = 0
    (0...i).each do |j|
      local_max = dp[j] if nums[j] < el && dp[j] > local_max
    end
    dp[i]  += local_max
    global_max = dp[i] if dp[i] > global_max
  end
  return global_max
end
