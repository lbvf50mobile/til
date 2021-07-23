# Leetcode: 814. Binary Tree Pruning.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3824/
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
# @param {TreeNode} root
# @return {TreeNode}
def prune_tree(root)
  return nil if dfs(root) == false
  return root
end

def dfs(x)
  answer = false
  answer = true if 1 == x.val
  if x.left
    if dfs(x.left)
      answer = true
    else
      x.left = nil
    end
  end
  if x.right
    if dfs(x.right)
      answer = true
    else
      x.right = nil
    end
  end
  return answer
end
