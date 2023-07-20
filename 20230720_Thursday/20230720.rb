# Leetcode: 735. Asteroid Collision.
# https://leetcode.com/problems/asteroid-collision/
# @param {Integer[]} asteroids
# @return {Integer[]}
# Error.
# [-2,-1,1,2]
def asteroid_collision(asteroids)
  a = asteroids
  plus, minus = [], []
  a.each do |x|
    if x > 0
      plus.push(x)
    else
      minus.push(x)
    end
  end
  while !plus.empty? && !minus.empty?
    y = plus.pop
    x = minus.pop
    z = y + x 
    next if 0 == z
    plus.push(y) if z > 0
    minus.push(x) if z < 0
  end
  if plus.empty? && minus.empty?
    return []
  elsif plus.empty?
    return minus
  else
    return plus
  end
end
