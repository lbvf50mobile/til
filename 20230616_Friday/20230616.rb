# Leetcode: 1569. Number of Ways to Reorder Array to Get Same BST.
# https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1580 ms, faster than 100.00% of Ruby online submissions for Number of
# Ways to Reorder Array to Get Same BST.
# Memory Usage: 258.7 MB, less than 100.00% of Ruby online submissions for
# Number of Ways to Reorder Array to Get Same BST.
# 2023.06.16 Daily Challegne.
# @param {Integer[]} nums
# @return {Integer}
def num_of_ways(nums)
  # Based on:
  # https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/solution/
  m = nums.size
  @mod = (10**9)+7
  @tb = Array.new(m){ Array.new(m,0)}
  (0...m).each do |i|
    @tb[i][0] = 1
    @tb[i][i] = 1
  end
  (2...m).each do |i|
    (1...i).each do |j|
      @tb[i][j] = (@tb[i-1][j-1] + @tb[i-1][j]) % @mod
    end
  end
  return (dfs(nums)-1) % @mod
end

def dfs(ns)
  m = ns.size
  return 1 if m < 3
  ln = ns.select{|x| x < ns[0]}
  rn = ns.select{|x| x > ns[0]}
  return dfs(ln) * dfs(rn) * @tb[m-1][ln.size] % @mod
end
