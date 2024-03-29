# Leetcode: 547. Number of Provinces.
# https://leetcode.com/problems/number-of-provinces/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 99 ms, faster than 78.57% of Ruby online submissions for Number of
# Provinces.
# Memory Usage: 214 MB, less than 33.33% of Ruby online submissions for Number
# of Provinces.
# 2023.06.04 Daily Challenge.
# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  # Based on:
  # https://leetcode.com/problems/number-of-provinces/solution/
  @icn = is_connected # Is connected.
  @n = is_connected.size
  @nc = 0 # Number of components.
  @v = Array.new(@n,false) # Visited.
  (0...@n).each do |i|
    next if @v[i]
    @nc += 1
    bfs(i)
  end
  return @nc
end

def bfs(i)
  @v[i] = true
  q = []
  q.push(i)
  while !q.empty?
    node = q.shift()
    (0...@n).each do |j|
      next if @v[j]
      next if 0 == @icn[node][j]
      q.push(j)
      @v[j] = true
    end
  end
end
