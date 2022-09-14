# Leetcode: 1457. Pseudo-Palindromic Paths in a Binary Tree.
# https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
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
def pseudo_palindromic_paths (root)
  @answer = 0
  @counter = Array.new(10,0)
    
end

def palindromic?
  even, odd = 0, 0
  @counter.each do |val|
    next if 0 == val
    if val.even?
      even += 1
    else
      odd += 1

    end
  end

end
