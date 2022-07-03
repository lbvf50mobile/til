# Leetcode: 376. Wiggle Subsequence.
# https://leetcode.com/problems/wiggle-subsequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 355 ms, faster than 33.33% of Ruby online submissions for Wiggle Subsequence.
# Memory Usage: 211.2 MB, less than 66.67% of Ruby online submissions for Wiggle Subsequence.
# @param {Integer[]} nums
# @return {Integer}
def wiggle_max_length(nums)
  @n = nums
  @dp = Array.new(@n.size)
  (0...@n.size).each{|i| rec(i)}
  @dp.flatten.max
end

def rec(i)
  return @dp[i] if @dp[i]
  # Select all that smaller.
  positive_start = 1
  max = 0
  (i+1...@n.size).each do |j|
    if @n[j] < @n[i]
      tmp = rec(j).last
      max = tmp if tmp > max
    end
  end
  positive_start += max
  # Select all that bigger.
  negative_start = 1
  max = 0
  (i+1...@n.size).each do |j|
    if @n[j]  > @n[i]
      tmp = rec(j).first
      max = tmp if tmp > max
    end
  end
  negative_start += max
  @dp[i] = [positive_start,negative_start]
  return @dp[i]
end
