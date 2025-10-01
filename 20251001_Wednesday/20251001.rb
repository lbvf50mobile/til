# Leetcode: 1518. Water Bottles
# https://leetcode.com/problems/water-bottles/description/?envType=daily-question&envId=2025-10-01
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  drink = 0
  full = num_bottles
  empty = 0
  while full > 0 
    drink += full
    empty += full
    full = 0
    full = empty/num_exchange
    empty %= num_exchange
  end
  return drink
end
