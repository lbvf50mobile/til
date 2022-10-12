# Leetcode: 976. Largest Perimeter Triangle.
# https://leetcode.com/problems/largest-perimeter-triangle/
# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  n = nums.sort.reverse
  i = 0
  while i + 2 < n.size
    if n[i] <= n[i+1] + n[i+2]
      return n[i] + n[i+1] + n[i+2]
    end
    i += 1
  end
  return 0
end
