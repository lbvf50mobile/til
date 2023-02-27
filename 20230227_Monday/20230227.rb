# Leetcode: 427. Construct Quad Tree.
# https://leetcode.com/problems/construct-quad-tree/
# Definition for a QuadTree node.
# class Node
#     attr_accessor :val, :isLeaf, :topLeft, :topRight, :bottomLeft, :bottomRight
#     def initialize(val=false, isLeaf=false, topLeft=nil, topRight=nil, bottomLeft=nil, bottomRight=nil)
#         @val = val
#         @isLeaf = isLeaf
#         @topLeft = topLeft
#         @topRight = topRight
#         @bottomLeft = bottomLeft
#         @bottomRight = bottomRight
#     end
# end

# Fails:
# [[1,1,1,1,0,0,0,0],[1,1,1,1,0,0,0,0],[1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1],[1,1,1,1,0,0,0,0],[1,1,1,1,0,0,0,0],[1,1,1,1,0,0,0,0],[1,1,1,1,0,0,0,0]]

# @param {Integer[][]} grid
# @return {Node}
def construct(grid)
  # Based on:
  # https://leetcode.com/problems/construct-quad-tree/discuss/207275/Python-non-recursive-bottom-up-%3A-keep-reducing-by-factor-of-two
  n = grid.size
  ng = Array.new(n).map{ Array.new()}
  n.times do |i|
    n.times do |j|
      ng[i].push(Node.new(grid[i][j] == 1, true, nil, nil, nil, nil))
    end
  end
  while n > 0
    n /= 2
    n.times do |i|
      n.times do |j|
        a = ng[i*2][j*2]
        b = ng[i*2][j*2 + 1]
        c = ng[i*2 + 1][j * 2]
        d = ng[i*2 + 1][j*2 +1]
        if a.val = b.val && b.val == c.val && c.val == d.val && a.val != ?*
          ng[i][j] = Node.new(a.val,true,nil,nil,nil,nil)
        else
          ng[i][j] = Node.new(?*, false, a,b,c,d)
        end
      end
    end
  end
  return ng[0][0]
end


