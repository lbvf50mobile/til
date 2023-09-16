# Leetcode: 1631. Path With Minimum Effort.
# https://leetcode.com/problems/path-with-minimum-effort/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2653 ms, faster than 100.00% of Ruby online submissions for Path With
# Minimum Effort.
# Memory Usage: 218.4 MB, less than 100.00% of Ruby online submissions for Path
# With Minimum Effort.
# 2023.09.16 Daily Challenge.
# @param {Integer[][]} heights
# @return {Integer}
def minimum_effort_path(heights)
  # Based on:
  # https://leetcode.com/problems/path-with-minimum-effort/discuss/4049595/Graph-oror-Binary-Search-oror-Medium-greaterEasy-oror-Easy-to-understand-oror-Beginner
  @h = heights
  @d = [[1,0],[-1,0],[0,-1],[0,1]]
  @m,@n = @h.size, @h[0].size
  @v = Array.new(@m){ Array.new(@n,false)}
  min,max = @h.flatten.minmax
  l,r = 0, max-min 
  while l < r
    mid = l + (r-l)/2 # <= Fixed here.
    @v = Array.new(@m){ Array.new(@n,false)}
    ok(0,0,mid)
    if @v[@m-1][@n-1]
      r = mid
    else
      l = mid + 1
    end
  end
  return l
end
def ok(i,j,mid)
  return if @v[i][j]
  @v[i][j] = true
  @d.each do |di,dj|
    ni = i + di
    nj = j + dj
    next if ! ni.between?(0,@m-1)
    next if ! nj.between?(0,@n-1)
    if (@h[i][j] - @h[ni][nj]).abs <= mid
      ok(ni,nj,mid)
    end
  end
end
