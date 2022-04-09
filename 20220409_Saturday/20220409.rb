# Leetcode: 347. Top K Frequent Elements.
# https://leetcode.com/problems/top-k-frequent-elements/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 93 ms, faster than 85.40% of Ruby online submissions for Top K Frequent Elements.
# Memory Usage: 212.2 MB, less than 49.63% of Ruby online submissions for Top K Frequent Elements.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  counter = nums.each_with_object(Hash.new){|e,o| o[e] ||= 0; o[e]+=1}
  counter = counter.to_a.sort_by{|x| -x.last}.map(&:first)
  counter[0...k]
end
