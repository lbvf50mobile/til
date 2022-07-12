# Leetcode: 473. Matchsticks to Square.
# https://leetcode.com/problems/matchsticks-to-square/
# @param {Integer[]} matchsticks
# @return {Boolean}
# TLE.
def makesquare(matchsticks)
  @m = matchsticks
  @dp = {}
  return rec(0,0,0,0,0)
end

def rec(i,a,b,c,d)
  log = [i,a,b,c,d].join(?,)
  return  @dp[log] if @dp[log]
  if @m.size == i
    if a == b && b == c && c == d && d == a
      return (@dp[log] = true)
    else
      return (@dp[log] = false)
    end
  end
  r1 = rec(i+1, a + @m[i], b, c, d) 
  r2 = rec(i+1,a, b + @m[i], c, d)
  r3 = rec(i+1,a,b,c+@m[i],d) 
  r4 = rec(i+1,a,b,c,d+@m[i])
  if r1 || r2 || r3 || r4
    return (@dp[log] = true)
  end
  return(@dp[log] = false)
end
