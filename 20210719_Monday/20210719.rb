# Leetcode: 235. Lowest Common Ancestor of a Binary Search Tree.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3819/
# Accepted.
# Thanks God!
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} pe
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, pe, q)
 @r = root 
 pe_path = get_path(pe)
 q_path = get_path(q)
 # p pe_path.map(&:val)
 # p q_path.map(&:val)
 i = 0
 while i < pe_path.size && i < q_path.size && pe_path[i].val == q_path[i].val 
   i += 1
 end
 q_path[i - 1]
end

def get_path(x)
  path = []
  @node = @r
  while @node
    path.push @node
    return path if @node.val == x.val
    if x.val > @node.val
      @node = @node.right
    else
      @node = @node.left
    end
  end
  raise "Cannot generate pat till #{x}."
end
