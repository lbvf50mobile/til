# Leetcode: 875. Koko Eating Bananas.
# https://leetcode.com/problems/koko-eating-bananas/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 844 ms, faster than 5.56% of Ruby online submissions for Koko Eating Bananas.
# Memory Usage: 211.8 MB, less than 55.56% of Ruby online submissions for Koko Eating Bananas.
# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  @piles, @h = piles, h
  low_speed = 1
  max_speed = @piles.max
  while low_speed < max_speed
    mid_speed = low_speed + (max_speed - low_speed)/2
    time = get_time(mid_speed)
    if time <= @h
      # It is possible to make slowly.
      max_speed = mid_speed
    else
      # Need to be faster.
      low_speed = mid_speed + 1
    end
  end
  max_speed
end


def get_time(speed)
  @piles.reduce(0){|acc,pile| acc + pile.fdiv(speed).ceil} 
end

