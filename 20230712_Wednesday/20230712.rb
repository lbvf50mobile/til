# Leetcode: 802. Find Eventual Safe States.
# https://leetcode.com/problems/find-eventual-safe-states/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 209 ms, faster than 50.00% of Ruby online submissions for Find
# Eventual Safe States.
# Memory Usage: 220.6 MB, less than 50.00% of Ruby online submissions for Find
# Eventual Safe States.
# 2023.07.12 Daily Challenge.
# @param {Integer[][]} graph
# @return {Integer[]}
def eventual_safe_nodes(graph)
  @g = graph
  @n = graph.size
  n = @n
  @v = Array.new(n,false)  # Visted.
  @ans = []
  @type = Array.new(n,0) # 0 - no info, 1 - safe, 2 unsafe
  @n.times do |i|
    dfs(i) if ! @v[i]
  end
  @ans.sort
end

def dfs(i)
  if @v[i]
    return false if 0 == @type[i]
    return true if 1 == @type[i] 
    return false if 2 == @type[i]
  end
  return true if 1 == @type[i]
  return false if 2 == @type[i]
  @v[i] = true
  is_safe = true
  @g[i].each do |j|
    is_safe = is_safe && dfs(j)
  end
  @type[i] = is_safe ? 1 : 2
  if is_safe
    @ans.push(i)
  end
  return is_safe
end

