# Leetcode: 662. Maximum Width of Binary Tree.
# https://leetcode.com/problems/maximum-width-of-binary-tree/
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
# TLE.
def width_of_binary_tree(root)
  # Hint by images from:
  # https://leetcode.com/problems/maximum-width-of-binary-tree/discuss/3436593/Image-Explanation-Why-long-to-int-C%2B%2BJavaPython
  q = [root]
  max = 0
  while !q.empty?
    nq = []
    all_nils = true
    line = []
    q.each_with_index do |x,i|
      if x.nil?
        nq.push(nil)
        nq.push(nil)
      else
        line.push(i)
        all_nils = false
        nq.push(x.left)
        nq.push(x.right)
      end
    end
    if !line.empty?
      width = line.last - line.first + 1
      max = width if width > max
    end
    break if all_nils
    q = nq
  end
  return max
end
