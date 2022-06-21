# Leetcode: 1642. Furthest Building You Can Reach.
# https://leetcode.com/problems/furthest-building-you-can-reach/
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  return 0 if 1 == heights.size
  max = []
  total = 0
  (1...heights.size).each do |i|
    if heights[i] > heights[i-1]
      delta = heights[i] - heights[i-1]
      total += delta
      max.push(delta)
      max.sort
      sum = 0
      (0...max.size - ladders).each do |i|
        sum += max[i]
      end
      if sum > bricks
        return i-1
      end
    end
  end
  return heights.size - 1
end
