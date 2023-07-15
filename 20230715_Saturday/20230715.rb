# Leetcode: 1751. Maximum Number of Events That Can Be Attended II.
# https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/
# @param {Integer[][]} events
# @param {Integer} k
# @return {Integer}
def max_value(events, k)
  # Based on:
  # https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/solution/
  # 1. Sort events by start time.
  @e = events.sort_by{|x| x[0]}
  @sts = @e.map{|x| x[0]}
  @n = @e.size
  # 2. Build a 2D array dp of size (k+1)*n as memory.
  @dp = Array.new(k+1){ Array.new(@n, -1)}
  # 3. Definde DFS method. dfs(ci,cnt) as the maximum value obtained by
  # attending a maximum count of events in the range e[ci..n-1].
  return dfs(0,k)
end

def dfs(ci, cnt)
  return 0 if 0 == cnt || @n == ci
  return @dp[cnt][ci] if -1 != @dp[cnt][ci] 
  ni = @sts.bsearch_index{|x| x >= @e[ci][1]}
  @dp[cnt][ci] = [dfs(ci+1, cnt), @e[ci][2] + dfs(ni, cnt-1)].max
  return @dp[cnt][ci]
end
