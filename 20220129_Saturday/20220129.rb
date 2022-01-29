# Leetcode: 84. Largest Rectangle in Histogram.
# https://leetcode.com/problems/largest-rectangle-in-histogram/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 304 ms, faster than 25.00% of Ruby online submissions for Largest Rectangle in Histogram.
# Memory Usage: 218.6 MB, less than 31.25% of Ruby online submissions for Largest Rectangle in Histogram.
# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
  # Based on:
  # https://leetcode.com/problems/largest-rectangle-in-histogram/discuss/28917/AC-Python-clean-solution-using-stack-76ms
  # https://leetcode.com/problems/largest-rectangle-in-histogram/discuss/28917/AC-Python-clean-solution-using-stack-76ms/492440
  heights.push(0)
  stack = [-1]
  ans = 0
  heights.each_with_index do |val,i|
    while val < heights[stack[-1]]
      h = heights[stack.pop]
      w = i - stack.last - 1
      ans = (h*w) > ans ? h*w : ans
    end
    stack.push(i)
  end
  heights.pop
  ans
end
