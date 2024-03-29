# Leetcode: 34. Find First and Last Position of Element in Sorted Array.
# https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 70 ms, faster than 31.31% of Ruby online submissions for Find First
# and Last Position of Element in Sorted Array.
# Memory Usage: 211.5 MB, less than 82.83% of Ruby online submissions for Find
# First and Last Position of Element in Sorted Array.
# 2023.10.09 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  # Based on:
  # https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/discuss/1054742/Python-O(logn)
  @n = nums
  l = bs(target)
  h = bs(target+1) - 1
  return [l,h] if l <= h
  return [-1,-1]
end

def bs(x)
  lo, hi = 0, @n.size # ! [1]
  while lo < hi
    md = lo + (hi-lo)/2
    if @n[md] < x
      lo = md + 1
    else
      hi = md
    end
  end
  return lo
end
