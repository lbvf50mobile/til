# Leetcode: 1642. Furthest Building You Can Reach.
# https://leetcode.com/problems/furthest-building-you-can-reach/
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
# TLE.
def furthest_building(heights, bricks, ladders)
  return 0 if 1 == heights.size
  total = 0
  heap = MinHeap.new([])
  heap_sum = 0
  (1...heights.size).each do |i|
    delta = heights[i] - heights[i-1]
    if delta > 0
      total += delta
      if heap.size < ladders
        heap.push(delta)
        heap_sum += delta 
      elsif heap.size == ladders && ladders > 0 && heap.min < delta
        tmp = heap.pop
        heap.push(delta)
        heap_sum += (delta - tmp) 
      end
      if bricks < (total - heap_sum)
        return i - 1
      end
    end
  end
  return heights.size - 1
end
