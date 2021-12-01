# Leetcode: 198. House Robber.
# https://leetcode.com/problems/house-robber/
# Runtime: 48 ms, faster than 93.09% of Ruby online submissions for House Robber.
# Memory Usage: 209.7 MB, less than 76.60% of Ruby online submissions for House Robber.
# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  @dp = Array.new(nums.size)
  @n = nums
  (0...nums.size).each do |i|
    dfs(i)
  end
  @dp.max  
end

def dfs(i)
  return @dp[i] if @dp[i]
  cur = @n[i]
  max = nil
  (i+2...@dp.size).each do |j|
    tmp = dfs(j)
    max ||= tmp
    max = tmp if tmp > max
  end
  max ||= 0
  @dp[i] = max + cur
end
