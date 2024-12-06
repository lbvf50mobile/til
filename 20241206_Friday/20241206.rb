# Leetcode: 2554. Maximum Number of Integers to Choose From a Range I
# https://leetcode.com/problems/maximum-number-of-integers-to-choose-from-a-range-i
# @param {Integer[]} banned
# @param {Integer} n
# @param {Integer} max_sum
# @return {Integer}
# TLE
def max_count(banned, n, max_sum)
  banned.sort!
  banned.push(n+1) if banned.last < n+1
  cntr = 0
  sum = 0
  last_right_banned = 0
  banned.each do |fnsh|
    strt = last_right_banned
    if strt+1 == fnsh
      last_right_banned = fnsh
      next
    end
    if sum + strt >= max_sum
      break
    end
    i = strt + 1
    j = fnsh - 1
    intsum = asum(i,j)
    if sum + intsum <= max_sum
      sum += intsum
      cntr += (j - i + 1)
      last_right_banned = fnsh
      next
    end
    if sum + i > max_sum
      break
    end
    cntr += bsch(i,j,sum,max_sum) - i+ 1
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
  while l <= j
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
