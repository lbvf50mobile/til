# Leetcode: 1361. Validate Binary Tree Nodes.
# https://leetcode.com/problems/validate-binary-tree-nodes
# @param {Integer} n
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
# It action. Not correct yet.
def validate_binary_tree_nodes(n, left_child, right_child)
  # There n nodes indexed from 0 til n-1 inclusive.
  # Every one is visited.
  # Every one visited ones.
  @v = Array.new(n,0)
  @l, @r = left_child, right_child
  @valid = true
  (0...n).each do |i|
    if 0 == @v[i]
      dfs(i)
      return false if ! @valid
    end
  end
  p @v
  (0...n).each do |i|
    return false if 1 != @v[i]
  end
  return true
end

def dfs(i)
  return if -1 == i
  return if ! @valid
  @v[i] += 1
  if @v[i] > 1
    @valid = false
    return
  end
  a,b = @l[i], @r[i]
  dfs(a)
  dfs(b)
end

