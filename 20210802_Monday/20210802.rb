# Leetcode: 827. Making A Large Island.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3835/
# https://leetcode.com/problems/making-a-large-island/
# https://youtu.be/_426VVOB8Vo by Michael Muinos.
# = = = = =
# Accepted.
# Thanks God!
# @param {Integer[][]} grid
# @return {Integer}
def largest_island(grid)
  @g = grid
  @around = [[1,0],[-1,0],[0,1],[0,-1]] # Connected land relative diffs for a cell.
  @island_id = 1 # Value for a current island, going to substitute all ones by it.
  @h = {} # Hash stores island_id => island_size.
  @h[0] = 0 # No land, not square.
  @max = 0 # Maximum island size.
  # Explore islands.
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      if 1 == @g[i][j]
        @island_id += 1 # New island.
        @h[@island_id] = explore(@island_id,i,j)
        @max = @h[@island_id] if @h[@island_id] > @max
      end
    end
  end
  # Make bridges.
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      if 0 == @g[i][j]
        size = make_bridge(i,j)
        @max = size if size > @max
      end
    end
  end
  return @max
end

def valid(i,j)
  i.between?(0,@g.size-1) && j.between?(0,@g[0].size-1)
end

def explore(id,i,j)
  q = [[i,j]]
  size = 1
  @g[i][j] = id
  while ! q.empty?
    ii, jj = q.shift
    @around.each do |(di,dj)|
      ni,nj = ii+di, jj+dj
      if valid(ni,nj) && 1 == @g[ni][nj]
        size += 1
        @g[ni][nj] = id
        q.push([ni,nj])
      end
    end
  end
  size
end

def make_bridge(i,j)
  @around.map{|(di,dj)| [di+i,dj+j]} # Get coordinages of neighbors.
    .select{|(ii,jj)| valid(ii,jj)} # Select valid coordinages.
    .map{|(ii,jj)| @g[ii][jj]}.uniq # Get uniq neighbors ids.
    .map{|id| @h[id]} # Get area by neighbor id.
    .sum + 1 # Sum areas and add bridge area.
end


# Leetcode: 1. Two Sum.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3836/
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  h = {}
  nums.each_with_index do |el,j|
    prev_value = target - el
    return [h[prev_value],j] if h[prev_value]
    h[el] = j # Value as a key, key as index.
  end
  raise "Cannot find an answer in this task."
end

