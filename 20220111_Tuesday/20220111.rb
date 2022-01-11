# Leetcode: 1022. Sum of Root To Leaf Binary Numbers.
# https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 101 ms, faster than 33.33% of Ruby online submissions for Sum of Root To Leaf Binary Numbers.
# Memory Usage: 210.2 MB, less than 33.33% of Ruby online submissions for Sum of Root To Leaf Binary Numbers.
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sum_root_to_leaf(root)
  @global_sum = 0
  dfs(root,[])
  @global_sum
end

def dfs(x,path_sum)
  return if x.nil?
  path_sum.push(x.val.to_s)
  if is_leaf(x)
    @global_sum += path_sum.join.to_i(2)
  else
    dfs(x.left, path_sum)
    dfs(x.right, path_sum)
  end
  path_sum.pop
end

def is_leaf(x)
  x && x.left.nil? && x.right.nil?
end
