# Leetcode: 1443. Minimum Time to Collect All Apples in a Tree.
# https://leetcode.com/problems/minimum-time-to-collect-all-apples-in-a-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# 2023.01.11 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
def min_time(n, edges, has_apple)
  @n,@e,@h = n, edges, has_apple
  @l = {}
  @v = [false] * n
  @e.each do |pr,ch|
    @l[pr] ||= []
    @l[ch] ||=[]
    @l[pr].push(ch)
    @l[ch].push(pr)
  end
  time, has_fruit = dfs(0)
  return time
end

def dfs(i)
  return [0, false] if @v[i]
  @v[i] = true
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
