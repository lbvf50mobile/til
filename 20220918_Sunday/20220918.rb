# Leetcode: 42. Trapping Rain Water.
# https://leetcode.com/problems/trapping-rain-water/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 198 ms, faster than 17.12% of Ruby online submissions for Trapping Rain Water.
# Memory Usage: 212.3 MB, less than 44.14% of Ruby online submissions for Trapping Rain Water.
# @param {Integer[]} height
# @return {Integer}
def trap(height)
  # Based on Stack Leetcode solution.
  ans, current = 0,0
  stack = []
  while current < height.size
    while (!stack.empty?) && (height[current] > height[stack.last])
      top = stack.pop 
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
