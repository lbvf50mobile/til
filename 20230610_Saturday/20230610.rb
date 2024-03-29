# Leetcode: 1802. Maximum Value at a Given Index in a Bounded Array.
# https://leetcode.com/problems/maximum-value-at-a-given-index-in-a-bounded-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 63 ms, faster than 100.00% of Ruby online submissions for Maximum
# Value at a Given Index in a Bounded Array.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for
# Maximum Value at a Given Index in a Bounded Array.
# 2023.06.10 Daily Challenge.
# @param {Integer} n
# @param {Integer} index
# @param {Integer} max_sum
# @return {Integer}
def max_value(n, index, max_sum)
  # Based on:
  # https://leetcode.com/problems/maximum-value-at-a-given-index-in-a-bounded-array/solution/
  @n,@i = n, index
  l,r = 1, max_sum
  while l < r
    m = (l+r+1)/2
    if get_sum(m) <= max_sum
      l = m
    else
      r = m - 1
    end
  end
  return l
end

def get_sum(v)
  cnt = 0
  if v > @i
    cnt += (v+v - @i)*(@i+1)/2
  else
    cnt += (v+1)*v/2 + @i - v + 1
  end
  if v >= @n - @i
    cnt += (v + v - @n + 1 + @i)*(@n-@i)/2 
  else
    cnt += (v + 1) * v/2 + @n - @i - v
  end
  return cnt - v
end
