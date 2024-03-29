# Leetcode: 1846. Maximum Element After Decreasing and Rearranging.
# https://leetcode.com/problems/maximum-element-after-decreasing-and-rearranging/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 124 ms, faster than 100.00% of Ruby online submissions for Maximum
# Element After Decreasing and Rearranging.
# Memory Usage: 218.6 MB, less than 100.00% of Ruby online submissions for
# Maximum Element After Decreasing and Rearranging.
# 2023.11.15 Daily Challenge.
# @param {Integer[]} arr
# @return {Integer}
def maximum_element_after_decrementing_and_rearranging(arr)
  # Based on:
  # https://leetcode.com/problems/maximum-element-after-decreasing-and-rearranging/solution/
  arr.sort!
  ans = 1
  (1...arr.size).each do |i|
    ans += 1 if arr[i] >= ans + 1
  end
  return ans
end
