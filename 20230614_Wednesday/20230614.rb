# Leetcode: 530. Minimum Absolute Difference in BST.
# https://leetcode.com/problems/minimum-absolute-difference-in-bst/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 143 ms, faster than 7.14% of Ruby online submissions for Minimum
# Absolute Difference in BST.
# Memory Usage: 211.8 MB, less than 71.43% of Ruby online submissions for
# Minimum Absolute Difference in BST.
# 2023.06.14 Daily Challenge.
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
def get_minimum_difference(root)
  stack = []
  # Tmp is a kind of pointer.
  tmp = root
  prev = nil
  ans = Float::INFINITY 
  while tmp || !stack.empty?
    # If pointer is on the valid node. Push this node, and move left.
    if tmp
      stack.push tmp
      tmp = tmp.left
      # Stick into the nil, need to get an element from the stack.
      # Make calculations.
      # And now go to the right.
    elsif tmp.nil? && !stack.empty?
      tmp = stack.pop
      # Action with tmp.
      if prev
        diff = (tmp.val - prev).abs
        ans = diff if diff < ans
      end
      prev = tmp.val
      tmp = tmp.right
    else
      break
    end
  end
  return ans
end
