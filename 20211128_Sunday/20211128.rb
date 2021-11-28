# Leetcode: 797. All Paths From Source to Target.
# https://leetcode.com/problems/all-paths-from-source-to-target/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 124 ms, faster than 75.00% of Ruby online submissions for All Paths From Source to Target.
# Memory Usage: 213.3 MB, less than 75.00% of Ruby online submissions for All Paths From Source to Target.
# @param {Integer[][]} graph
# @return {Integer[][]}
# [[4,3,1],[3,2,4,0],[3],[4],[]]
# The graph is not a DAG.
def all_paths_source_target(graph)
  @g = graph
  @visited, @ans = [], []
  bt(0)
  @ans
end

def bt(i)
  @visited.push(i)
  if i == @g.size - 1
    @ans.push(@visited.clone)
  else
    @g[i].each do |j|
      bt(j)
    end
  end
  @visited.pop()
end
