# Leetcode: 441. Arranging Coins.
# https://leetcode.com/problems/arranging-coins/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 94 ms, faster than 75.76% of Ruby online submissions for Arranging Coins.
# Memory Usage: 209.9 MB, less than 30.30% of Ruby online submissions for Arranging Coins.
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  l,r = 1,70_000
  while l <= r
    mid = (l+r)/2
    value = mid*(1+mid)/2
    return mid if value == n
    if value > n
      r = mid - 1
    else
      l = mid + 1
    end
  end
  r
end
