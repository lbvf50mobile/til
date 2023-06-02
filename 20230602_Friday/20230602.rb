# Leecode: 2101. Detonate the Maximum Bombs.
# https://leetcode.com/problems/detonate-the-maximum-bombs/
# @param {Integer[][]} bombs
# @return {Integer}
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 929 ms, faster than 100.00% of Ruby online submissions for Detonate
# the Maximum Bombs.
# Memory Usage: 218.8 MB, less than 100.00% of Ruby online submissions for
# Detonate the Maximum Bombs.
# 2023.06.02 Daily Challenge.
def maximum_detonation(bombs)
  # Translation of Leetcode's soltuion:
  # https://leetcode.com/problems/detonate-the-maximum-bombs/solution/ 
  @g = {}
  @n = bombs.size
  b = bombs

  # Build the graph.
  (0...@n).each do |i|
    (0...@n).each do |j|
      next if i == j
      xi, yi, ri = b[i]
      xj, yj, _  = b[j]
      if (ri**2) >= ((xi-xj)**2) + ((yi-yj)**2)
        @g[i] ||= []
        @g[i].push(j)
      end
    end
  end
  ans = 0
  (0...@n).each do |i|
    tmp = bfs(i)
    ans = tmp if tmp > ans
  end
  return ans
end
def bfs(i)
  q = [i]
  v = {}
  v[i] = true
  while !q.empty?
    cur = q.shift
    @g[cur] ||= []
    @g[cur].each do |nb|
      next if v[nb]
      v[nb] = true
      q.push(nb)
    end
  end
  v.size
end
