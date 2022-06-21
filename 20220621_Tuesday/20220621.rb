# Leetcode: 1642. Furthest Building You Can Reach.
# https://leetcode.com/problems/furthest-building-you-can-reach/
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  return 0 if 1 == heights.size
  total = 0
  @d = true
  puts heights.inspect if @d
  max = []
  heap = MinHeap.new([])
  heap_sum = 0
  (1...heights.size).each do |i|
    delta = heights[i] - heights[i-1]
    if delta > 0
      total += delta
      if max.size < ladders
        p [i,?a]
        max.push(delta)
        max.sort!
        heap_sum = max.sum
      elsif max.size == ladders && ladders > 0 && max[0] < delta
        p [i,?b]
        tmp = max.shift
        max.push(delta)
        max.sort!
        heap_sum = max.sum
      end
      if bricks < (total - heap_sum)
        return i - 1
      end
    end
  end
  return heights.size - 1
end
