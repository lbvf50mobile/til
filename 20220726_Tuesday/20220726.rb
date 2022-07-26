# Leetcode: 236. Lowest Common Ancestor of a Binary Tree.
# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 165 ms, faster than 40.58% of Ruby online submissions for Lowest Common Ancestor of a Binary Tree.
# Memory Usage: 213 MB, less than 95.65% of Ruby online submissions for Lowest Common Ancestor of a Binary Tree.
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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, pp, q)
  @d = false
  @p,@q = pp,q
  @pl,@ql = nil, nil

  # Build revrsed tree. Or some set of linked lists.
  bfs_and_list_creator(root)
  raise "@pd and @ql are note set." if @pl.nil? || @ql.nil?

  # Trave from pp til root.
  # Mark all visited elements.
  print_list(@pl) if @d
  tmp = @pl
  while tmp
    tmp[2] = true
    tmp = tmp[1]
  end

  # Travel from q till root.
  # Return when meet visited.
  print_list(@ql) if @d
  tmp = @ql
  while tmp
    return tmp[0] if tmp[2] # Here was an error.
    tmp = tmp[1]
  end
  raise "Cannot find an answer."
end

def bfs_and_list_creator(root)
  queue = [[root,nil,false]]
  while ! queue.empty?
    el = queue.shift
    node = el.first
    @pl = el if node.val == @p.val # Here was an error.
    @ql = el if node.val == @q.val # Here was an error.
    queue.push([node.left,el,false]) if node.left
    queue.push([node.right,el,false]) if node.right
    break if (!@pl.nil?) && (!@ql.nil?)
  end
end

def print_list(node)
  tmp = node
  ans = []
  while tmp
    ans.push(tmp[0].val)
    tmp = tmp[1]
  end
  puts ans.join(?,)
end
