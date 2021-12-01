# Leetcode: 198. House Robber.
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
  (i+1...@dp.size).each do |j|
    tmp = dfs(j)
    max ||= tmp
    max = tmp if tmp > max
  end
  max ||= 0
  @dp[i] = max + cur
end
