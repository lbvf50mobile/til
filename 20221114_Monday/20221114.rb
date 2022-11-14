# Leetcode: 947. Most Stones Removed with Same Row or Column.
# https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 180 ms, faster than 100.00% of Ruby online submissions for Most Stones Removed with Same Row or Column.
# Memory Usage: 211.9 MB, less than 81.82% of Ruby online submissions for Most Stones Removed with Same Row or Column.
# @param {Integer[][]} stones
# @return {Integer}
# Based on:
# https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/discuss/197668/Count-the-Number-of-Islands-O(N)
def remove_stones(stones)
  # Based on:
  # https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/discuss/197668/Count-the-Number-of-Islands-O(N)
  # https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/discuss/198141/Python-concise-DFS
  # https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/discuss/2812465/It's-Literally-a-Graph%3A-DFS-and-Union-Find
  @islands = 0
  @f = {}
  stones.each do |i,j|
    uni(i,~j)
  end
  stones.size - @islands 
end

def find(x)
  if @f[x].nil?
    @f[x] = x
    @islands += 1
  end
  if x != @f[x]
    @f[x] = find(@f[x])
  end
  return @f[x]
end

def uni(x,y)
  x = find(x)
  y = find(y)
  if x != y
    @f[x] = y
    @islands -= 1
  end
end
