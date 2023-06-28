# Leetcode: 1514. Path with Maximum Probability. 
# https://leetcode.com/problems/path-with-maximum-probability/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 341 ms, faster than 100.00% of Ruby online submissions for Path with
# Maximum Probability.
# Memory Usage: 213.9 MB, less than 100.00% of Ruby online submissions for Path
# with Maximum Probability.
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Float[]} succ_prob
# @param {Integer} start
# @param {Integer} end
# @return {Float}
def max_probability(n, edges, succ_prob, start, end1)
  # Based on:
  # https://leetcode.com/problems/path-with-maximum-probability/solution/
  mp = Array.new(n,0)
  mp[start] = 1
  (0...n-1).each do |i|
    hupd = 0
    (0...edges.size).each do |j|
      u,v = edges[j]
      pp = succ_prob[j]
      if mp[u] * pp > mp[v]
        mp[v] = mp[u] * pp
        hupd = 1
      end
      if mp[v] * pp > mp[u]
        mp[u] = mp[v] * pp
        hupd = 1
      end
    end
    break if 0 == hupd
  end
  return mp[end1]
end
