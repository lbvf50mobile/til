# Leetcode: 852. Peak Index in a Mountain Array.
# https://leetcode.com/problems/peak-index-in-a-mountain-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 129 ms, faster than 100.00% of Ruby online submissions for Peak Index
# in a Mountain Array.
# Memory Usage: 219.4 MB, less than 66.67% of Ruby online submissions for Peak
# Index in a Mountain Array.
# 2023.07.25 Daily Challenge.
# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  i = 0
  while arr[i] < arr[i+1] && i < arr.size-1
    i += 1
  end
  return i
end
