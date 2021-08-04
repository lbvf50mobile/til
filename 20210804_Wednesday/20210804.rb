# Leetcode: 113. Path Sum II.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3838/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
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
  return [] if root.nil?
  @ans = []
  @ts = target_sum
  bt(root,[],0)
  @ans
end

def bt(node, path, sum)
  sum += node.val
  path.push(node.val)
  if node.left.nil? && node.right.nil?
    @ans.push(path.clone) if sum == @ts
  else
    bt(node.left, path, sum) if node.left
    bt(node.right, path, sum) if node.right
  end
  path.pop() # need to free from current node every time.
end

