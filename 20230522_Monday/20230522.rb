# Leetcode: 347. Top K Frequent Elements.
# https://leetcode.com/problems/top-k-frequent-elements/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 103 ms, faster than 52.94% of Ruby online submissions for Top K
# Frequent Elements.
# Memory Usage: 212.1 MB, less than 47.48% of Ruby online submissions for Top K
# Frequent Elements.
# 2023.05.22 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  # Straight forward without Heap.
  h = nums.tally
  h.to_a.sort_by{|x| -x[1]}.map(&:first)[0...k]    
end
