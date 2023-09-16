# Leetcode: 1631. Path With Minimum Effort.
# https://leetcode.com/problems/path-with-minimum-effort/
# @param {Integer[][]} heights
# @return {Integer}
def minimum_effort_path(heights)
  @h = heights
  @v = Array.new(105){ Array.new(105,false)}
  @d = [[1,0],[-1,0],[0,-1],[0,1]]
  @m,@n = @h.size, @h[0].size
  l,r = 0, (10**9)+2
  while l < r
    mid = r + (r-l)/2
    @v = Array.new(105){ Array.new(105,false)}
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
