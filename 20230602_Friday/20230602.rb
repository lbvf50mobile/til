# Leecode: 2101. Detonate the Maximum Bombs.
# https://leetcode.com/problems/detonate-the-maximum-bombs/
# @param {Integer[][]} bombs
# @return {Integer}
def maximum_detonation(bombs)
  @g = {}
  @n = bombs.size

  # Build the graph.
  (0...@n).each do |i|
    (0...@n).each do |j|
      next if i == j
      xi, yi, ri = bombs[i]
      xj, yj, _ = bombs[j]
      if ri**2 >= (xi-xj)**2 + (yi-yj)**2
        @g[i] ||= []
        @g[i].push(j)
      end
    end
  end
  ans = 0
  (0...@n).each do |i|
    ans = [ans,bfs(i)].max
  end
  ans
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
      q.push(nb)
    end
  end
  v.size
end
