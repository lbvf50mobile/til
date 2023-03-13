# Leetcode: 101. Symmetric Tree.
# https://leetcode.com/problems/symmetric-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 83 ms, faster than 76.47% of Ruby online submissions for Symmetric Tree.
# Memory Usage: 211 MB, less than 43.53% of Ruby online submissions for Symmetric Tree.
# 2023.03.13 Daily Challenge.
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
# @return {Boolean}
def is_symmetric(root)
  q = [root]
  while ! q.empty?
    nq = [] # new queue.
    return false if ! sym(q)
    q.each do |x|
      next if ! x
      nq.push(x.left)
      nq.push(x.right)
    end
    q = nq
  end
  return true
end

def sym(arr)
  i,j = 0, arr.size - 1
  while i < j
    if arr[i].nil? || arr[j].nil?
      return false if arr[i] || arr[j]
    else
      return false if arr[i].val != arr[j].val
    end
    # Need to move pointers on each interation.
    i += 1
    j -= 1
  end
  return true
end
