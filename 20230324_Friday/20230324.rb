# Leetcode: 1466. Reorder Routes to Make All Paths Lead to the City Zero.
# https://leetcode.com/problems/reorder-routes-to-make-all-paths-lead-to-the-city-zero/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 290 ms, faster than 100.00% of Ruby online submissions for Reorder
# Routes to Make All Paths Lead to the City Zero.
# Memory Usage: 232.5 MB, less than 83.33% of Ruby online submissions for
# Reorder Routes to Make All Paths Lead to the City Zero.
# 2023.03.24 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer}
def min_reorder(n, connections)
  @a = Array.new(n+1).map{ []}
  @n = n
  @ans = 0
  connections.each do |a,b|
    # Add one more value directions.
    # form a to b. `to` = true.
    # from b to a. `to` = false.
    @a[a].push([b,true])
    @a[b].push([a,false])
  end
  # Move from zero need to rearange all `to` to false.
  v = Array.new(n+1,false)
  q = [0]
  v[0] = true
  while !q.empty? 
    x = q.shift
    @a[x].each do |node,to|
      next if v[node]
      @ans += 1 if to
      v[node] = true
      q.push(node)
    end
  end
  @ans
end
