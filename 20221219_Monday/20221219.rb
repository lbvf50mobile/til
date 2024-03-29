# Leetcode: 1971. Find if Path Exists in Graph.
# https://leetcode.com/problems/find-if-path-exists-in-graph/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 679 ms, faster than 89.47% of Ruby online submissions for Find if Path Exists in Graph.
# Memory Usage: 237.3 MB, less than 89.47% of Ruby online submissions for Find if Path Exists in Graph.
# 2022.12.19 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, source, destination)
  return true if source == destination
  # Adjacency list.
  al = Array.new(n).map{ [] }
  edges.each do |a,b|
    al[a].push(b)
    al[b].push(a)
  end
  # Used.
  u = Array.new(n,false)
  q = [source] 
  u[source] = true
  while ! q.empty?
    x = q.shift
    al[x].each do |y|
      next if u[y]
      return true if destination == y
      u[y] = true
      q.push(y)
    end
  end
  return false
end
