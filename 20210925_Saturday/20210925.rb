# Leetcode: 1293. Shortest Path in a Grid with Obstacles Elimination.
# https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3987/
# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer}
def shortest_path(grid, k)
  # https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination/discuss/451832/Python-Short-BFS-Solution
  rows, cols = grid.size, grid[0].size
  q = [] # row, col, num of obstables met so far.
  q.push([0,0,0])
  visited = {}
  visited[[0,0]] = 0
  steps = 0
  while ! q.empty?
    q.size.times do 
      r,c,obs = q.pop()
      next if obs > k
      return steps if rows - 1 == r && cols - 1 == c
      [[r+1,c],[r-1,c],[r,c+1],[r,c-1]].each do |(nr,nc)|
        next if ! (nr.between?(0,rows-1) && nc.between?(0,cols-1))
        nobs = 1 == grid[nr][nc] ? obs+1 : obs
        arr = [nr,nc]
        if visited[arr].nil? || visited[arr] > nobs
          visited[arr] = nobs
          q.unshift([nr,nc,nobs])
        end
      end
    end
    steps += 1
  end
  -1
end
