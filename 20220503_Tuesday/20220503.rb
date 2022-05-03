# Leetcode: 581. Shortest Unsorted Continuous Subarray.
# https://leetcode.com/problems/shortest-unsorted-continuous-subarray/
# = = = = = = =
# Accetepd.
# Thanks God!
# = = = = = = =
# Runtime: 214 ms, faster than 17.65% of Ruby online submissions for Shortest Unsorted Continuous Subarray.
# Memory Usage: 215.3 MB, less than 5.88% of Ruby online submissions for Shortest Unsorted Continuous Subarray.
# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  # Based on:
  # https://leetcode.com/problems/shortest-unsorted-continuous-subarray/solution/
  stack = []
  l,r = nums.size, 0
  (0...nums.size).each do |i|
    while (!stack.empty?) && nums[stack.last] > nums[i]
      tmp = stack.pop
      l = tmp if tmp < l
    end
    stack.push(i)
  end
  stack.clear
  (0...nums.size).reverse_each do |i|
    while (! stack.empty?) && nums[stack.last] < nums[i]
      tmp = stack.pop
      r = tmp if tmp > r
    end
    stack.push i
  end
  r - l > 0 ? r - l + 1 : 0
end
