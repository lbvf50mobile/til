# Leetcode: 1642. Furthest Building You Can Reach.
# https://leetcode.com/problems/furthest-building-you-can-reach/
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
# Based on: 
# https://leetcode.com/problems/furthest-building-you-can-reach/discuss/918515/JavaC%2B%2BPython-Priority-Queue
def furthest_building(heights, bricks, ladders)
  heap = MinHeap.new([])
  (0...heights.size-1).each do |i|
    delta = heights[i+1] - heights[i]
    heap.push(delta) if delta > 0
    bricks -= heap.pop if heap.size > ladders
    return i if bricks < 0
  end
  return heights.size - 1
end
