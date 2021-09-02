# Leetcode: 95. Unique Binary Search Trees II.
# https://leetcode.com/problems/unique-binary-search-trees-ii/discuss/31592/Recursive-python-solution
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  return [[]] if 0 == n
  dfs(1,n+1)
end

def dfs(start, stop)
  return false if start == stop
  ans = []
  (start...stop).each do |i|
  end
  ans
end
