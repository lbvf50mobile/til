# Leetcode: 605. Can Place Flowers.
# https://leetcode.com/problems/can-place-flowers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 110 ms, faster than 55.56% of Ruby online submissions for Can Place Flowers.
# Memory Usage: 210.9 MB, less than 83.33% of Ruby online submissions for Can Place Flowers.
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  counter = 0
  last = flowerbed.size - 1
  f = flowerbed
  flowerbed.each_with_index do |x,i|
    if x == 0 
      a = (0 == i) && (f[i+1] == 0)
      b = (last == i) && (f[i-1] == 0)
      c = (i != last) && (0 != i) && 0 == f[i-1] && 0 == f[i+1]
      if a || b || c
        f[i] = 1
        counter += 1
      end
    end
    return true if n <= counter
  end
  n <= counter
end
