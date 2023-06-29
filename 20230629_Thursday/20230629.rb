# Leetcode: 864. Shortest Path to Get All Keys.
# https://leetcode.com/problems/shortest-path-to-get-all-keys/
# @param {String[]} grid
# @return {Integer}
# TLE
def shortest_path_all_keys(grid)
  # Based on:
  # https://leetcode.com/problems/shortest-path-to-get-all-keys/solution/
  m, n = grid.size, grid[0].size
  q = []
  seen = {}
  key_set, lock_set = {}, {}
  all_keys = 0
  start_r, start_c = -1, -1
  (0...m).each do |i|
    (0...j).each do |j|
      cell = grid[i][j]
      if /[a-f]/ === cell 
        all_keys += (1 << (cell.ord - ?a.ord))
        key_set[cell] = true
      end
      if /[A-F]/ === cell
        lock_set[cell] = true
      end
      if ?@ == cell
        start_r, start_c = i, j
      end
    end
  end
  q.push [start_r, start_c, 0, 0]
  seen[0] ||= {}
  seen[0][[start_r,start_c]] = true
  while ! q.empty?
    i, j, keys, dist = q.shift
    seen[keys] ||= {}
    [[0,1],[1,0],[-1,0],[0,-1]].each do |di,dj|
      ni, nj = i + di, j + dj
      next if !ni.between?(0, m-1)
      next if !nj.between?(0, n-1)
      next if ?# == grid[ni][nj]
      c = grid[ni][nj]
      b = (1 << (cell.ord - ?a.ord))
      b1 = (1 << (cell.ord - ?A.ord))
      if keys_set[c] && 0 == (b & keys)
        nk = (keys | b)
        return dist + 1 if nk == all_keys
        seen[nk] ||= {}
        seen[nk][[ni,nj]] = true
        q.push([ni,nj,nk,dist + 1])
      elsif lock_set[c] && 0 == (keys & b1)
        next
      elsif seen[keys][[ni,nj]].nil?
        seen[keys][[ni,nj]] = true
        q.push([ni,nj,keys, dist +1])
      end
    end
  end
  return -1
end
