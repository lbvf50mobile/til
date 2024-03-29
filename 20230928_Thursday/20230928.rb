# Leetcode: 905. Sort Array By Parity.
# https://leetcode.com/problems/sort-array-by-parity/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 79 ms, faster than 68.18% of Ruby online submissions for Sort Array
# By Parity.
# Memory Usage: 211.7 MB, less than 77.27% of Ruby online submissions for Sort
# Array By Parity.
# 2023.09.28 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  # Two pointers.
  e = 0 # Even pointer.
  o = nums.size - 1 # Odd pointer.
  ans = Array.new(nums.size)
  nums.each do |v|
    break if e > o
    if v.even?
      ans[e] = v
      e += 1
    else
      ans[o] = v
      o -= 1
    end
  end
  return ans
end
