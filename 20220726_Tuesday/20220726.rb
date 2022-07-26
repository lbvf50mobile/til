# Leetcode: 236. Lowest Common Ancestor of a Binary Tree.
# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, pp, q)
  @p,@q = pp,q
  @pl,@ql = nil, nil

  # Build revrsed tree. Or some set of linked lists.
  bfs_and_list_creator(root)

  # Trave from pp til root.
  # Mark all visited elements.
  tmp = @pl
  while tmp
    tmp[2] = true
    tmp = tmp[1]
  end

  # Travel from q till root.
  # Return when meet visited.
  tmp = @ql
  while tmp
    return tmp[0].val if tmp[2]
    tmp = tmp[1]
  end
  raise "Cannot find an answer."
end

def bfs_and_list_creator(root)
  queue = [[root,nil,false]]
  while ! queue.empty?
    el = queue.shift
    node = el.first
    @pl = el if node.val == @p
    @ql = el if node.val == @q
    queue.push([node.left,el,false]) if node.left
    queue.push([node.right,el,false]) if node.right
    break if (!@pl.nil?) && (!@ql.nil?)
  end
end

