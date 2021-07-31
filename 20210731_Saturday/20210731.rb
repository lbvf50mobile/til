# Leetcode: 42. Trapping Rain Water.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/612/week-5-july-29th-july-31st/3833/
# https://leetcode.com/problems/trapping-rain-water/solution/
# Accepted.
# Thanks God!
# @param {Integer[]} height
# @return {Integer}
def trap(height)
  return 0 if height.empty?
  left_max = Array.new(height.size,0)
  right_max = Array.new(height.size,0)
  max = 0
  (0...height.size).each do |i|
    max = height[i] if height[i] > max
    left_max[i] = max
  end
  max = 0
  (0...height.size).reverse_each do |i|
    max = height[i] if height[i] > max
    right_max[i] = max
  end
  # Time to caluclate a sum.
  sum = 0
  (0...height.size).each do |i|
    left = i > 0 ? left_max[i-1]: 0
    right = i < height.size - 1 ? right_max[i+1] : 0
    min = left
    min = right if right < left
    # p [i,left,right]
    ans = min - height[i]
    sum += (ans >=0 ? ans : 0)
  end
  return sum
end
