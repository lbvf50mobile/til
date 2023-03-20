# Leetcode: 605. Can Place Flowers.
# https://leetcode.com/problems/can-place-flowers/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 103 ms, faster than 76.19% of Ruby online submissions for Can Place Flowers.
# Memory Usage: 212.5 MB, less than 28.57% of Ruby online submissions for Can Place Flowers.
# 2023.03.20 Daily challenge.
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  counter = 0
  f = flowerbed
  # Plant flower during the loop.
  (0...f.size).each do |i|
    # One middle element.
    if 0 == f[i] && 0 == i && f.size - 1 == i
      counter += 1
      f[i] = 1
    # Begining and next is 0.
    elsif 0 == f[i] && 0 == i && 0 == f[i+1]
      counter += 1
      f[i] = 1
    # End and prefios is 0.
    elsif 0 == f[i] && f.size - 1 == i && 0 == f[i-1]
      counter += 1
      f[i] = 1
    # Middle and neighbors are 0.
    elsif 0 == f[i] && 0 == f[i-1] && 0 == f[i+1]
      counter += 1
      f[i] = 1
    end
    return true if counter >= n
  end
  return false
end
