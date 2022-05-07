# Leetcode: 456. 132 Pattern.
# https://leetcode.com/problems/132-pattern/
# = = = = = = =
# Accepted.
# Thanks Jesus Christ!
# = = = = = = =
# Runtime: 187 ms, faster than 66.67% of Ruby online submissions for 132 Pattern.
# Memory Usage: 215.2 MB, less than 100.00% of Ruby online submissions for 132 Pattern.
# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  # Based on:
  # https://leetcode.com/problems/132-pattern/discuss/2015601/Python-oror-Monotonic-Stack-O(N)
  stack = []
  minVal = nums[0]
  (1...nums.size).each do |i|
    while (!stack.empty?) && nums[i] >= stack[-1][0]
      stack.pop
    end
    if (!stack.empty?) && nums[i] > stack[-1][1]
      return true
    end
    stack.push([nums[i],minVal])
    minVal = nums[i] < minVal ? nums[i] : minVal
  end
  return false
end
