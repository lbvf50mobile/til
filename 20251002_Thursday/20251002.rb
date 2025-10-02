# Leetcode: 3100. Water Bottles II
# https://leetcode.com/problems/water-bottles-ii/description/?envType=daily-question&envId=2025-10-02
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def max_bottles_drunk(num_bottles, num_exchange)
  f = num_bottles # full
  e = 0 # empty
  d = 0 # drink
  r = num_exchange # exchange ratio
  while f > 0 
    # Drink step number one.
    d += f # Drink all whater.
    e += f # add empty bottles.
    f = 0 # Now all 
    # Exchange. Step number two.
    if e >= r 
      f += 1
      e -= r
      r += 1
    end
  end
  return d
end
