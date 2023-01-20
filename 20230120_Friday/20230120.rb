# Leetcode: 491. Non-decreasing Subsequences.
# https://leetcode.com/problems/non-decreasing-subsequences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 349 ms, faster than 100.00% of Ruby online submissions for Non-decreasing Subsequences.
# Memory Usage: 234.9 MB, less than 100.00% of Ruby online submissions for Non-decreasing Subsequences.
# @param {Integer[]} nums
# @return {Integer[][]}
def find_subsequences(nums)
  require 'set'
  @a = nums
  @answer =  Set.new()
  @path = []
  (0...@a.size-1).each do |i|
    dfs(i)
  end
  return @answer.to_a
end

def dfs(i)
  @path.push(@a[i])
  if 1 < @path.size
    @answer.add(@path.clone)
  end
  (i+1...@a.size).each do |j|
    if @a[i] <= @a[j]
      dfs(j)
    end
  end
  @path.pop
end
