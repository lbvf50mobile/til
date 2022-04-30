# Leetcode: 399. Evaluate Division.
# https://leetcode.com/problems/evaluate-division/
# @param {String[][]} equations
# @param {Float[]} values
# @param {String[][]} queries
# @return {Float[]}
def calc_equation(equations, values, queries)
  # Solution based on:
  # https://leetcode.com/problems/evaluate-division/discuss/270993/Python-BFS-and-UF(detailed-explanation)
  @g = {}
  equations.zip(values).each do |((x,y),v)|
    @g[x] ||= {}
    @g[y] ||= {}
    @g[x][y] = v
    @g[y][x] = 1/v
  end
    
end
def bfs(src, dst)
  return -1.0 if !( @g[src] && @g[dst])
  q = [ [src, 1.0]]
  seen = {}
  q.each do |(x,v)|
  end
end
