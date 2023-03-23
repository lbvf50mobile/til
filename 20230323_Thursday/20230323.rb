# Leetcode: 1319. Number of Operations to Make Network Connected.
# https://leetcode.com/problems/number-of-operations-to-make-network-connected/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 166 ms, faster than 100.00% of Ruby online submissions for Number of
# Operations to Make Network Connected.
# Memory Usage: 222.1 MB, less than 100.00% of Ruby online submissions for
# Number of Operations to Make Network Connected.
# 2023.03.23 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer}
def make_connected(n, connections)
  # Based on:
  # https://leetcode.com/problems/number-of-operations-to-make-network-connected/
  return -1 if connections.size < n-1
  @adj = Array.new(n+1).map{ [] }
  connections.each do |a,b|
    @adj[a].push(b)
    @adj[b].push(a)
  end
  cmp = 0
  @v = Array.new(n+1, false)
  (0...n).each do |i|
    next if @v[i]
    cmp += 1
    bfs(i)
  end
  return cmp - 1 # Important!
end
def bfs(i)
  q = [i]
  @v[i] = true
  while !q.empty?
    j = q.shift
    @adj[j].each do |k|
      next if @v[k]
      q.push(k)
      @v[k] = true
    end
  end
end
