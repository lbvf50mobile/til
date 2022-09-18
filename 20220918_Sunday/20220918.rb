# Leetcode: 42. Trapping Rain Water.
# https://leetcode.com/problems/trapping-rain-water/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 188 ms, faster than 18.02% of Ruby online submissions for Trapping Rain Water.
# Memory Usage: 212.4 MB, less than 39.64% of Ruby online submissions for Trapping Rain Water.
# @param {Integer[]} height
# @return {Integer}
def trap(height)
  # Based on Stack Leetcode solution.
  ans, current = 0,0
  stack = []
  while current < height.size
    while (!stack.empty?) && (height[current] > height[stack.last])
      top = stack.last
      stack.pop
      break if stack.empty?
      distance = current - stack.last - 1
      bounded_height = [height[current], height[stack.last]].min - height[top]
      ans += distance * bounded_height
    end
    stack.push(current)
    current += 1
  end
  return ans
end
