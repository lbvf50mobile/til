# Leetcode: 658. Find K Closest Elements.
# https://leetcode.com/problems/find-k-closest-elements/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 264 ms, faster than 61.54% of Ruby online submissions for Find K Closest Elements.
# Memory Usage: 212.8 MB, less than 100.00% of Ruby online submissions for Find K Closest Elements.
# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_closest_elements(arr, k, x)
  # It is a sliding windows solution.
  # Need to find interval were absolute sum
  # of differences is minumum.
  i,j = 0,k-1
  i_min, j_min = 0, k-1
  sum = 0
  (0...k).each do |index|
    sum += (arr[index] - x).abs
  end
  min_sum = sum
  (k...arr.size).each do |index|
    sum -= (arr[i] - x).abs
    sum += (arr[index] - x).abs
    i += 1
    j += 1
    if sum < min_sum
      min_sum = sum
      i_min,j_min = i,j
    end
  end
  arr[i_min..j_min]
end
