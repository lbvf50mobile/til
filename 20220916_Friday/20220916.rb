# Leetcode: 1770. Maximum Score from Performing Multiplication Operations.
# https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/
# @param {Integer[]} nums
# @param {Integer[]} multipliers
# @return {Integer}
# MLE. Memory Limit Exeed.
def maximum_score(nums, multipliers)
  @n, @m = nums, multipliers
  @dp = Array.new(@m.size).map{ Array.new(@n.size).map{ Array.new(@n.size,false)}}
  rec(0,0,@n.size-1)
end

def rec(i,j,k)
  return 0 if (k < 0) || (i >= @m.size) || (j >= @n.size)
  return 0 if j > k # Add this line to be sure.
  return @dp[i][j][k] if @dp[i][j][k]
  max = [@m[i]*@n[j] + rec(i+1,j+1,k), @m[i]*@n[k] + rec(i+1,j,k-1)].max
  @dp[i][j][k] = max
  return max
end
