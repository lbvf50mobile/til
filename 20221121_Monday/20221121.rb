# Leetcode: 1926. Nearest Exit from Entrance in Maze.
# https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1099 ms, faster than 14.29% of Ruby online submissions for Nearest Exit from Entrance in Maze.
# Memory Usage: 215.9 MB, less than 14.29% of Ruby online submissions for Nearest Exit from Entrance in Maze.
# 2022.11.21 Daily Challenge.
# @param {Character[][]} maze
# @param {Integer[]} entrance
# @return {Integer}
def nearest_exit(maze, entrance)
  @m = maze
  used = Array.new(@m.size).map{ Array.new(@m[0].size,false)}
  used[entrance[0]][entrance[1]] = true
  q = [entrance]
  l = [0]
  while ! q.empty?
    i,j = q.shift
    level = l.shift
    [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |ni,nj|
      return level if out_(ni,nj) && level > 0
      next if out_(ni,nj) 
      next if used[ni][nj]
      next if ?+ == @m[ni][nj]
      used[ni][nj] = true
      l.push(level + 1)
      q.push([ni,nj])
    end
  end
  return - 1
end

def in_(i,j)
  i.between?(0,@m.size - 1) && j.between?(0, @m[0].size - 1)
end

def out_(i,j)
  ! in_(i,j)
end
