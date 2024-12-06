# Leetcode: 2554. Maximum Number of Integers to Choose From a Range I
# https://leetcode.com/problems/maximum-number-of-integers-to-choose-from-a-range-i
# @param {Integer[]} banned
# @param {Integer} n
# @param {Integer} max_sum
# @return {Integer}
# Fails:
# [87,193,85,55,14,69,26,133,171,180,4,8,29,121,182,78,157,53,26,7,117,138,57,167,8,103,32,110,15,190,139,16,49,138,68,69,92,89,140,149,107,104,2,135,193,87,21,194,192,9,161,188,73,84,83,31,86,33,138,63,127,73,114,32,66,64,19,175,108,80,176,52,124,94,33,55,130,147,39,76,22,112,113,136,100,134,155,40,170,144,37,43,151,137,82,127,73]
# 1079
# 87
def max_count(banned, n, max_sum)
  # Fist step make intervals.
  banned.sort!

  # find index closest. to n+1
  l,r,m = 0, banned.size-1, 0
  while l <= r 
    m = l + (r-l)/2
    val = banned[m]
    break if val == n+1
    if val < n+1
      l = m + 1
    else
      r = m - 1
    end
  end
  if n+1 != banned[m]
    banned = banned[0...l] + [n+1]
  else
    banned = banned[0..m]
  end
 
  # Base variables.
  cntr = 0
  sum = 0
  last_right_banned = 0
  # Start loop to pick up the right part of the interval for bs.
  banned.each do |fnsh|
    # Take left interval.
    strt = last_right_banned
    # Empty interval one bound after enother. 1,2.
    # Just move forward.
    if strt+1 == fnsh
      last_right_banned = fnsh
      next
    end
    # No sence in moving forward.
    # Even bount of interval is greate than max sum.
    if sum + strt >= max_sum
      break
    end
    # Okey. If reach this place in is possbile to work with inteval.
    i = strt + 1
    j = fnsh - 1
    intsum = asum(i,j)
    # All interval could be used.
    if sum + intsum <= max_sum
      sum += intsum
      cntr += (j - i + 1)
      last_right_banned = fnsh
      next
    end
    # the interval could not be used. 
    if sum + i > max_sum
      break
    end
    # could be used a part of thisinterval.
    cntr += bsch(i,j,sum,max_sum) - i + 1
    break
  end
  return cntr
end

def asum(i,j)
  return ((j-i+1)*(i+j))/2
end
def bsch(i,j,sum,max_sum)
  m = 0
  l = i
  r = j
  while l <= r
    m = l + (r-l)/2
    val = sum + asum(i,m)
    return m if max_sum == val
    if val < max_sum
      l = m + 1
    else
      r = m - 1
    end
  end
  return r if sum + asum(i,r) < max_sum
  return l 
end
