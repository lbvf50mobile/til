# Leetcode: 1770. Maximum Score from Performing Multiplication Operations.
# https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/
# @param {Integer[]} nums
# @param {Integer[]} multipliers
# @return {Integer}
# TLE.
def maximum_score(nums, multipliers)
  # Based on.
  # https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/solution/
  @m,@n = multipliers, nums
  m,n = multipliers.size, nums.size
  dp = [0] * (m+1)
  (0...m).reverse_each do |op|
    next_row = dp.clone
    # Present Row is now next_row because we are moving upwards.
    (0..op).reverse_each do |left|
      dp[left] = [@m[op]*@n[left] + next_row[left+1], @m[op] * @n[n-1-(op-left)] + next_row[left]].max
    end
  end
  dp[0]
end

