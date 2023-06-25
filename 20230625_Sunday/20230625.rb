# Leetcode: 1575. Count All Possible Routes.
# https://leetcode.com/problems/count-all-possible-routes/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE.
# 2023.06.25 Daily Challenge.
# @param {Integer[]} locations
# @param {Integer} start
# @param {Integer} finish
# @param {Integer} fuel
# @return {Integer}
# TLE.
def count_routes(locations, start, finish, fuel)
  # Based on:
  # https://leetcode.com/problems/count-all-possible-routes/solution/
  @lc, @st, @fn, @fl = locations, start, finish, fuel
  @n = @lc.size
  @dp = {}
  return solve(@st, @fl)
end

def solve(city, rfuel)
  return 0 if rfuel < 0
  pair = [city, rfuel]
  return @dp[pair] if @dp[pair]
  ans = 0
  ans =  1if @fn == city
  (0...@n).each do |j|
    next if j == city
    x = (@lc[city] - @lc[j]).abs
    ans = (ans + solve(j, rfuel - x)) % 1000000007
  end
  @dp[pair] = ans
  return ans
end
