# Leetcode: 1557. Minimum Number of Vertices to Reach All Nodes.
# https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 233 ms, faster than 60.00% of Ruby online submissions for Minimum
# Number of Vertices to Reach All Nodes.
# Memory Usage: 221.9 MB, less than 80.00% of Ruby online submissions for
# Minimum Number of Vertices to Reach All Nodes.
# 2023.05.18 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_smallest_set_of_vertices(n, edges)
  # Based on:
  # https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/solution/
  out = Array.new(n,false)
  edges.each do |a,b|
    out[b] = true
  end
  ans = []
  (0...n).each do |i|
    ans.push(i) if ! out[i]
  end
  return ans
end
