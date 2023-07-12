# Leetcode: 863. All Nodes Distance K in Binary Tree.
# https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
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
  @d = false
  # Debugging summary.
  # 1. Read types.
  # 2. Graph need visited map for BFS.
  @root, @target, @k = root, target, k
  p [@root.nil?, @target.nil?, @k, "Begining."] if @d
  # Target node.
  @tn = nil
  # Build tree.
  p "Start bulid tree." if @d
  bt(root,nil)
  p "Tree is builded." if @d
  ans = []
  # No target in the tree.
  p [@tn.nil?, "target node"] if @d
  return ans if @tn.nil?
  if 0 == @k
    ans.push bt.v
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
    if @d
      p c
      p nq.map{|x| x.v }
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
def bt(node,t = nil)
  return nil if node.nil?
  l = node.left
  r = node.right
  v = node.val
  p v if @d
  nd = Tn.new(v,nil,nil,t)
  nd.l = bt(l,nd)
  nd.r = bt(r,nd)
  @tn = nd if node == @target
  return nd
end
