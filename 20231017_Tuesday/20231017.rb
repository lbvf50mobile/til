# Leetcode: 1361. Validate Binary Tree Nodes.
# https://leetcode.com/problems/validate-binary-tree-nodes
# @param {Integer} n
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
# It action. Not correct yet.
def validate_binary_tree_nodes(n, left_child, right_child)
  # Every one is visited.
  # Every one visited ones.
  @counter = {}
  @counter[0] = 1
  @valid = true
  @n, @l, @r = n, left_child, right_child
  dfs(0)
  return false if ! @valid
  # All except -1 must be visted.
  (0...n).each do |i|
    a,b = @l[i], r[i]
    # Return if node itself is unvisited.
    return false if @counter[i]
    if -1 != a 
      # Unvisited return false.
      return false if ! @counter[a]
    end
    if -1 != b
      # Unvisted return false.
      return false if ! @counter[b]
    end
  end
  return true
end

def dfs(i)
  return if ! @valid
  if @counter[i]
    @valid = false
    return
  end
  @counter[i] = 1
  a, b = @l[i], @r[i]
  dfs(a) if -1 != a
  dfs(b) if -1 != b
end
