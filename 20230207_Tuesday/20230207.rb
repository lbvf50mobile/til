# Leetcode: 904. Fruit Into Baskets.
# https://leetcode.com/problems/fruit-into-baskets/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 464 ms, faster than 33.33% of Ruby online submissions for Fruit Into Baskets.
# Memory Usage: 222 MB, less than 33.33% of Ruby online submissions for Fruit Into Baskets.
# 2023.02.07 Daily Challenge.
# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruits)
  return 1 if 1 == fruits.size
  require "set"
  tps = Set.new([])
  cntr = {}
  cntr.default = 0
  i,j,max = 0, 1, 0

  tps.add(fruits[i])
  cntr[fruits[i]] += 1

  while i < fruits.size
    # Try to change max.
    if 2 >= tps.size
      max = j-i if j-i > max
    end
    # It is time to grow.
    if j < fruits.size && 2 >= tps.size
      tps.add(fruits[j])
      cntr[fruits[j]] += 1
      j += 1
      next
    end
    # It is time to srink.
    if j == fruits.size || 2 < tps.size
      cntr[fruits[i]] -= 1
      if 0 ==  cntr[fruits[i]]
        tps.delete(fruits[i])
      end
      i += 1
      next
    end

  end
  return max
end
