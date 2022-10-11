# Leetcode: 334. Increasing Triplet Subsequence. 
# https://leetcode.com/problems/increasing-triplet-subsequence/
# @param {Integer[]} nums
# @return {Boolean}
# TLE.
def increasing_triplet(nums)
  @n = nums
  (0...@n.size-2).each do |i|
    (i+1...@n.size-1).each do |j|
      (j+1...@n.size).each do |k|
        return true if @n[i] < @n[j] && @n[j] < @n[k] && @n[i] < @n[k]
      end
    end
  end
  return false
end

