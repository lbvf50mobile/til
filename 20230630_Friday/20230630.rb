# Leetcode: 1970. Last Day Where You Can Still Cross.
# https://leetcode.com/problems/last-day-where-you-can-still-cross/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2813 ms, faster than 12.50% of Ruby online submissions for Last Day
# Where You Can Still Cross.
# Memory Usage: 217.8 MB, less than 12.50% of Ruby online submissions for Last
# Day Where You Can Still Cross.
# 2023.06.30 Daily Challenge.
# @param {Integer} row
# @param {Integer} col
# @param {Integer[][]} cells
# @return {Integer}
def latest_day_to_cross(row, col, cells)
  # Based on:
  # https://leetcode.com/problems/last-day-where-you-can-still-cross/solution/
  @r,@c,@cells = row, col, cells
  left, right = 1, row * col
  while left < right
    mid = right - (right - left)/2
    if can_cross(mid)
      left = mid
    else
      right = mid - 1
    end
  end
  return left
end

def can_cross(day)
  g = Array.new(@r){ Array.new(@c,0)}
  q = []
  dr = [[1,0],[0,1],[-1,0],[0,-1]]
  @cells[0...day].each do |r,c|
    g[r-1][c-1] = 1
  end
  @c.times do |i|
    if 0 == g[0][i]
      q.push([0,i])
      g[0][i] = -1
    end
  end
  while !q.empty?
    r,c = q.shift
    return true if @r - 1 == r
    dr.each do |dr,dc|
      nr, nc = r + dr, c + dc
      next if ! nr.between?(0,@r-1)
      next if ! nc.between?(0,@c-1)
      next if 0 != g[nr][nc]
      g[nr][nc] = -1
      q.push([nr,nc])
    end
  end
  return false
end
