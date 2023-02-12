# Leetcode: 2477. Minimum Fuel Cost to Report to the Capital.
# https://leetcode.com/problems/minimum-fuel-cost-to-report-to-the-capital/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 518 ms, faster than 100.00% of Ruby online submissions for Minimum Fuel Cost to Report to the Capital.
# Memory Usage: 264.6 MB, less than 72.73% of Ruby online submissions for Minimum Fuel Cost to Report to the Capital.
# 2023.02.12 Daily Challenge.
# @param {Integer[][]} roads
# @param {Integer} seats
# @return {Integer}
def minimum_fuel_cost(roads, seats)
  # Based on:
  # https://leetcode.com/problems/minimum-fuel-cost-to-report-to-the-capital/discuss/2834516/Python-DFS-Picture-explanation-O(N)
  @sts = seats
  @n = roads.size + 1
  @gr = {}
  roads.each do |a,b|
    @gr[a] ||= []
    @gr[b] ||= []
    @gr[a].push(b)
    @gr[b].push(a)
  end
  @ans = 0
  dfs(0,-1)
  return @ans
end

def dfs(u,pe)
  cnt = 1
  @gr[u] ||= []
  @gr[u].each do |v|
    next if v == pe
    cnt += dfs(v,u)
  end
  @ans += cnt.fdiv(@sts).ceil if 0 != u
  return cnt
end


