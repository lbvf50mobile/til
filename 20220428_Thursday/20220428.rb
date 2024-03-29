# Leetcode: 1631. Path With Minimum Effort.
# https://leetcode.com/problems/path-with-minimum-effort/
# = = = = = = = = = = = = 
# Accepted.
# Thanks, Jesus Christ!
# = = = = = = = = = = = =
# Runtime: 2367 ms, faster than 66.67% of Ruby online submissions for Path With Minimum Effort.
# Memory Usage: 211.7 MB, less than 100.00% of Ruby online submissions for Path With Minimum Effort.
# @param {Integer[][]} heights
# @return {Integer}
def minimum_effort_path(heights)
  # Code based on:
  # https://leetcode.com/problems/path-with-minimum-effort/discuss/1000195/Thought-Process-from-Naive-BFS-to-Dijkstra
  h = heights.size
  w = heights[0].size
  queue = [[0,0]]
  cost = Array.new(h).map{ Array.new(w,Float::INFINITY)}
  cost[0][0] = 0
  directions = [[1,0],[0,1],[-1,0],[0,-1]]
  inside = ->(rr,cc){ rr.between?(0,h-1) && cc.between?(0,w-1)}
  while ! queue.empty?
    r,c = queue.pop()
    curr_h = heights[r][c]
    curr_c = cost[r][c]
    directions.each do |(dr,dc)|
      r1,c1 = r+dr, c+dc
      if inside[r1,c1]
        nh = heights[r1][c1]
        nc = (curr_h - nh).abs > curr_c ? (curr_h - nh).abs : curr_c 
        if nc < cost[r1][c1]
          cost[r1][c1] = nc
          queue.unshift [r1,c1]
        end
      end
    end
  end
  cost[h-1][w-1]
end
