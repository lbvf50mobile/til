# Leetcode: 735. Asteroid Collision.
# https://leetcode.com/problems/asteroid-collision/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 90 ms, faster than 91.30% of Ruby online submissions for Asteroid
# Collision.
# Memory Usage: 211.9 MB, less than 28.26% of Ruby online submissions for
# Asteroid Collision.
# 2023.07.20 Daily Challenge.
# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  a = asteroids
  plus, ans = [], []
  a.each do |x|
    if x > 0
      plus.push x
      next
    end
    # Remove smaller ones.
    while !plus.empty? && plus.last < (-1 * x)
      plus.pop
    end
    # Both deleted when similar.
    if !plus.empty? && plus.last == (-1 * x)
      plus.pop
      next
    end
    # Negative are in the answer.
    if plus.empty?
      ans.push x
    end
  end
  ans += plus
  return ans
end
