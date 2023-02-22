# Leetcode: 1011. Capacity To Ship Packages Within D Days.
# https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/
# @param {Integer[]} weights
# @param {Integer} days
# @return {Integer}
def ship_within_days(weights, days)
  @w = weights
    
end

# Calculate days need to move all cargo.
def get_time(cap)
  i = 0
  days = 0
  reminder = @w[0]
  filled = 0
  while i < @s.size
    # Sheeping cargo.
    while filled < cap
      if reminder == @w[i]
    end
    days += 1
  end
  return days
end
