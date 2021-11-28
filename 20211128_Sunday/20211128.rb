# Leetcode: 797. All Paths From Source to Target.
# https://leetcode.com/problems/all-paths-from-source-to-target/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 144 ms, faster than 37.50% of Ruby online submissions for All Paths From Source to Target.
# Memory Usage: 213.3 MB, less than 75.00% of Ruby online submissions for All Paths From Source to Target.
# @param {Integer[][]} graph
# @return {Integer[][]}
# [[4,3,1],[3,2,4,0],[3],[4],[]]
# The graph is not a DAG.
def all_paths_source_target(graph)
  @g = graph
  @visited, @ans = [], []
  bt(0,0)
  @ans
end

def bt(i,n)
  @visited.push(i)
  n = set_byte(n,i)
  
  if i == @g.size - 1
    @ans.push(@visited.clone)
  else
    @g[i].each do |j|
      bt(j,n) if ! check_byte(n,j)
    end
  end
  n = reset_byte(n,i)
  @visited.pop()
end
def set_byte(number,index)
  number | (1 << index)
end
def check_byte(number,index)
  (number >> index) & 1 == 1
end

def reset_byte(number, index)
  number &  ((16**2-1)^(1 << index))
end
