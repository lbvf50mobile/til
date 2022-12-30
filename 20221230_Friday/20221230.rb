# Leetcode: 797. All Paths From Source to Target.
# https://leetcode.com/problems/all-paths-from-source-to-target/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 156 ms, faster than 84.62% of Ruby online submissions for All Paths From Source to Target.
# Memory Usage: 215.2 MB, less than 7.69% of Ruby online submissions for All Paths From Source to Target.
# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  @n = graph.size
  @l = @n - 1
  @g = graph
  @v = Array.new(@n,false)
  @path = []
  @answer = []
  backtracking(0)
  return @answer
end

def backtracking(i)
  return if @v[i]
  @path.push(i)
  @v[i] = true
  if @l == i
    @answer.push(@path.clone)
  else
    @g[i].each do |j|
      backtracking(j)
    end
  end
  @path.pop()
  @v[i] = false
end
