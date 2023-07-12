# Leetcode: 863. All Nodes Distance K in Binary Tree.
# https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 95 ms, faster than 25.00% of Ruby online submissions for All Nodes
# Distance K in Binary Tree.
# Memory Usage: 211.3 MB, less than 100.00% of Ruby online submissions for All
# Nodes Distance K in Binary Tree.
# 2023.07.12 Updated.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @param {TreeNode} target
# @param {Integer} k
# @return {Integer[]}
class Tn
  attr_accessor :v, :l, :r, :t
  def initialize(v,l = nil, r = nil, t = nil)
    @v, @l, @r, @t = v, l, r, t 
  end
end
def distance_k(root, target, k)
  @root, @target, @k = root, target, k
  # Target node.
  @tn = nil
  # Build tree.
  build_t(root,nil)
  ans = []
  # No target in the tree.
  return ans if @tn.nil?
  if 0 == @k
    ans.push @tn.v # here was an error!
    return ans
  end
  # Start Layerd BFS.
  q, nq, c = [@tn], [], 0
  visited = {}
  while ! q.empty?
    c += 1
    q.size.times do 
      x = q.pop
      visited[x] = true
      nq.push x.l if x.l && (! visited[x.l]) 
      nq.push x.r if x.r && (! visited[x.r])
      nq.push x.t if x.t && (! visited[x.t])
    end
    # Need to generate answer.
    # Answer's layer.
    if @k == c
      ans = nq.map{|x| x.v }
      break
    end
    q,nq = nq, q
  end
  return ans
end

# Build tree.
def build_t(node,t = nil)
  return nil if node.nil?
  l = node.left
  r = node.right
  v = node.val
  nd = Tn.new(v,nil,nil,t)
  nd.l = build_t(l,nd)
  nd.r = build_t(r,nd)
  @tn = nd if node == @target
  return nd
end
