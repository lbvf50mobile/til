# Leetcode: 1200. Minimum Absolute Difference.
# https://leetcode.com/problems/minimum-absolute-difference/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 148 ms, faster than 36.36% of Ruby online submissions for Minimum Absolute Difference.
# Memory Usage: 215.3 MB, less than 45.45% of Ruby online submissions for Minimum Absolute Difference.
# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  min = nil
  a = arr.sort
  (1...a.size).each do |i|
    diff = (a[i] - a[i-1]).abs
    min ||= diff
    min = diff if diff < min
  end
  answer = []
  (1...a.size).each do |i|
    diff = (a[i] - a[i-1]).abs
    answer.push([a[i-1],a[i]]) if diff == min
  end
  answer
end
