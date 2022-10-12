# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 149 ms, faster than 84.21% of Ruby online submissions for Largest Perimeter Triangle.
# Memory Usage: 215.2 MB, less than 63.16% of Ruby online submissions for Largest Perimeter Triangle.
# 2022.10.12 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  n = nums.sort.reverse
  i = 0
  while i + 2 < n.size
    if n[i] < n[i+1] + n[i+2]
      return n[i] + n[i+1] + n[i+2]
    end
    i += 1
  end
  return 0
end
