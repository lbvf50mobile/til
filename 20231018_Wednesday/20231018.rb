# Leetcode: 2050. Parallel Courses III.
# https://leetcode.com/problems/parallel-courses-iii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 280 ms, faster than 100.00% of Ruby online submissions for Parallel
# Courses III.
# Memory Usage: 247.6 MB, less than 100.00% of Ruby online submissions for
# Parallel Courses III.
# 2023.10.18 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} relations
# @param {Integer[]} time
# @return {Integer}
def minimum_time(n, relations, time)
  # Based on:
  # https://leetcode.com/problems/parallel-courses-iii/solution/
  @g = {}
  @dp = {}
  @t = time
  n.times do |i|
    @g[i] = []
  end
  relations.each do |e|
    x,y = e[0] - 1, e[1] - 1
    @g[x].push(y)
  end
  ans = 0
  n.times do |n|
    tmp = dfs(n)
    ans = tmp if tmp > ans
  end
  return ans
end

def dfs(n)
  if @dp[n]
    return @dp[n]
  end
  if ! @g[n] 
    return @t[n]
  end
  if 0 == @g[n].size
    return @t[n]
  end
  ans = 0
  @g[n].each do |nb|
    tmp = dfs(nb)
    ans = tmp if tmp > ans
  end
  @dp[n] = @t[n] + ans
  return @t[n] + ans
end
