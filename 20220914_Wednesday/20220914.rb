# Leetcode: 1457. Pseudo-Palindromic Paths in a Binary Tree.
# https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1534 ms, faster than 100.00% of Ruby online submissions for Pseudo-Palindromic Paths in a Binary Tree.
# Memory Usage: 229.7 MB, less than 100.00% of Ruby online submissions for Pseudo-Palindromic Paths in a Binary Tree.
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
def pseudo_palindromic_paths (root)
  @answer = 0
  @counter = Array.new(10,0)
  backtracking(root)
  return @answer
end

def backtracking(node)
  @counter[node.val] += 1
  if node.left.nil? && node.right.nil?
    @answer += 1 if palindromic?
  else
    backtracking(node.left) if node.left
    backtracking(node.right) if node.right
  end
  @counter[node.val] -= 1
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
  return odd <= 1
end
