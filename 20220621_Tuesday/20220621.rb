# Leetcode: 1642. Furthest Building You Can Reach.
# https://leetcode.com/problems/furthest-building-you-can-reach/
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  return 0 if 1 == heights.size
  @d = false
  puts heights.inspect if @d
  max = []
  total = 0
  (1...heights.size).each do |i|
    puts "i=#{i} h=#{heights[i]}" if @d
    if heights[i] > heights[i-1]
      puts "Need to jump." if @d
      delta = heights[i] - heights[i-1]
      puts "delta = #{delta}" if @d
      total += delta
      max.push(delta)
      max.sort! # <= here was an error.
      sum = 0
      (0...max.size - ladders).each do |j|
        sum += max[j]
      end
      if sum > bricks
        return i-1
      end
    else
      puts "no need to jump." if @d
    end
  end
  return heights.size - 1
end
