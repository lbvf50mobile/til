# Leetcode: 1443. Minimum Time to Collect All Apples in a Tree.
# https://leetcode.com/problems/minimum-time-to-collect-all-apples-in-a-tree/
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
# Error:
# 4
# [[0,2],[0,3],[1,2]]
# [false,true,false,false]
def min_time(n, edges, has_apple)
  @n,@e,@h = n, edges, has_apple
  @l = {}
  @e.each do |pr,ch|
    @l[pr] ||= []
    @l[pr].push(ch)
  end
  time, has_fruit = dfs(0)
  return  time
end

def dfs(i)
  time = 0
  has_fruit = @h[i]
  (@l[i] || []).each do |j|
    tj,hj = dfs(j)
    if hj
      has_fruit = true
      time += (2 + tj)
    end
  end
  return [time,has_fruit]
end
