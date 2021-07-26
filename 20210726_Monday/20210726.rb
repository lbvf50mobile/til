# Leetcode: 108. Convert Sorted Array to Binary Search Tree. 
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3827/
# Accepted.
# Thanks God!
# Definition for a binary tree node.
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
  @a = nums
  return rec(0,@a.size-1)
end

def rec(l,r)
  return nil if l > r
  mid = l + (r-l)/2
  left = rec(l,mid-1)
  right = rec(mid+1,r)
  return TreeNode.new(@a[mid],left,right)
end
