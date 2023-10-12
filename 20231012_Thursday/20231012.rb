# Leetcode: 1095. Find in Mountain Array.
# https://leetcode.com/problems/find-in-mountain-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 84 ms, faster than 100.00% of Ruby online submissions for Find in
# Mountain Array.
# Memory Usage: 211.2 MB, less than 100.00% of Ruby online submissions for Find
# in Mountain Array.
# 2023.10.12 Daily Challenge.
#
# This is MountainArray's API interface.
# You should not implement it, or speculate about its implementation
# class MountainArray
#    def get(index):
#       
#    end
#
#    def length()
#		
#	 end
# end

# @param {int} int
# @param {MountainArray} mountain_arr
# @return {int}
def findInMountainArray(target, mountain_arr)
  # Based on:
  # https://leetcode.com/problems/find-in-mountain-array/solution/
  
  t, m = target, mountain_arr

  # Save the lenght of the mountain array.
  len = m.length()

  #1. Find the index of the peak element.

  l, h = 1, len - 2
  while l != h
    ti = l + (h-l)/2
    if m.get(ti) < m.get(ti+1)
      l = ti + 1
    else
      h = ti
    end
  end
  pi = l

  # 2. Search in the strictly increasing part of the array.
  l = 0
  h = pi
  while l != h
    ti = l + (h-l)/2
    if m.get(ti) < t
      l = ti + 1
    else
      h = ti
    end
  end
  # Check if the target is present in the strictly increasing part.
  return l if m.get(l) == t

  # 3. Otherwise, search in the strictly decreasing part.
  l = pi + 1 
  h = len - 1
  while l != h
    ti = l + (h-l)/2
    if m.get(ti) > t
      l = ti + 1
    else
      h = ti
    end
  end
  # Check if the target is present in the strictly decreasing part.
  return l if m.get(l) == t
  # Target is not present in the mountain array.
  return -1
end
