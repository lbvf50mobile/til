# Leetcode: 113. Path Sum II.
# https://leetcode.com/problems/path-sum-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 174 ms, faster than 25.58% of Ruby online submissions for Path Sum II.
# Memory Usage: 211.4 MB, less than 88.37% of Ruby online submissions for Path Sum II.
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
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
  @answer, @target = [], target_sum
  @path, @sum = [],0
  backtracking(root)
  @answer
end

def backtracking(node)
  return if node.nil?
  @path.push(node.val)
  @sum += node.val
  if @sum == @target && node.left.nil? && node.right.nil?
    @answer.push(@path.clone)
  end
  backtracking(node.left)
  backtracking(node.right)
  @path.pop
  @sum -= node.val
end
