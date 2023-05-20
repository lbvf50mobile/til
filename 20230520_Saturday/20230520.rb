# Leetcode: 399. Evaluate Division.
# https://leetcode.com/problems/evaluate-division/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 68 ms, faster than 83.33% of Ruby online submissions for Evaluate
# Division.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for
# Evaluate Division.
# 2023.05.20 Daily Challenge.
# @param {String[][]} equations
# @param {Float[]} values
# @param {String[][]} queries
# @return {Float[]}
def calc_equation(equations, values, queries)
  # Based on: 
  # https://leetcode.com/problems/evaluate-division/discuss/3544428/Python-Elegant-and-Short-or-FloydWarshall
  g = {}
  equations.zip(values).each do |(u,v),val|
    g[u] ||= {}
    g[v] ||= {}
    g[u][u] = 1
    g[v][v] = 1
    g[u][v] = val 
    g[v][u] = 1.fdiv(val)
  end
  g.keys.each do |k|
    g[k].keys.each do |i|
      g[k].keys.each do|j|
        g[i][j] = g[i][k] * g[k][j]
      end
    end
  end
  queries.map{|u,v| 
    if ! g[u]
      -1
    elsif g[u][v]
      g[u][v]
    else
      -1
    end
  }
end
