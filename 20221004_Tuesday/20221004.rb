# Leetcode: 112. Path Sum.
# https://leetcode.com/problems/path-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 188 ms, faster than 12.41% of Ruby online submissions for Path Sum.
# Memory Usage: 211.4 MB, less than 17.52% of Ruby online submissions for Path Sum.
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
# @return {Boolean}
def has_path_sum(root, target_sum)
  return false if ! root
  value = target_sum - root.val
  if 0 == value && root.left.nil? && root.right.nil?
    return true
  end
  if root.left && root.right
    return has_path_sum(root.left,value) || has_path_sum(root.right, value)
  elsif root.left
    return has_path_sum(root.left,value)
  elsif root.right
    return has_path_sum(root.right,value)
  else
    return false # Leaf and value is not zero.
  end
  raise "Unreachable point."
end
