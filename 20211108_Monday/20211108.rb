# Leetcode: 96. Unique Binary Search Trees.
# https://leetcode.com/problems/unique-binary-search-trees/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 52 ms, faster than 96.30% of Ruby online submissions for Unique Binary Search Trees.
# Memory Usage: 209.7 MB, less than 92.59% of Ruby online submissions for Unique Binary Search Trees.
# @param {Integer} n
# @return {Integer}
def num_trees(n)
  @dp = Array.new(20).map{ Array.new(20)}
  track(1,n)
end

def track(i,j)
  return 1 if i > j
  return @dp[i][j] if @dp[i][j]
  total = 0
  (i..j).each do |k|
    total += track(i,k-1) *  track(k+1,j) 
  end
  @dp[i][j] = total 
end
