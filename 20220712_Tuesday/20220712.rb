# Leetcode: 473. Matchsticks to Square.
# https://leetcode.com/problems/matchsticks-to-square/
# @param {Integer[]} matchsticks
# @return {Boolean}
# [5,5,5,5,4,4,4,4,3,3,3,3]
# [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
# TLE.
def makesquare(matchsticks)
  @m = matchsticks
  @sum = @m.sum
  return false if @sum != ((@sum/4) * 4)
  @qu = @sum/4
  @dp = {}
  return rec(0,0,0,0,0)
end

def rec(i,a,b,c,d)
  return false if a > @qu || b > @qu || c > @qu || d > @qu
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
