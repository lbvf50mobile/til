# Leetcode: 108. Convert Sorted Array to Binary Search Tree.
# https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
# Definition for a binary tree node.
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 246 ms, faster than 25.00% of Ruby online submissions for Convert Sorted Array to Binary Search Tree.
# Memory Usage: 277.7 MB, less than 71.67% of Ruby online submissions for Convert Sorted Array to Binary Search Tree.
#
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.empty?
  return TreeNode.new(nums[0]) if 1 == nums.size
  return TreeNode.new(nums[1],sorted_array_to_bst(nums[0...1])) if 2 == nums.size
  left = sorted_array_to_bst(nums[0...nums.size/2]) 
  right = sorted_array_to_bst(nums[nums.size/2+1..-1])
  return TreeNode.new(nums[nums.size/2],left,right)
end

