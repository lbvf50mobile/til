# Leetcode: 1041. Robot Bounded In Circle.
# https://leetcode.com/problems/robot-bounded-in-circle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 118 ms, faster than 11.11% of Ruby online submissions for Robot Bounded In Circle.
# Memory Usage: 209.7 MB, less than 100.00% of Ruby online submissions for Robot Bounded In Circle.
# @param {String} instructions
# @return {Boolean}
def is_robot_bounded(instructions)
  @d = false
  puts "Input: #{instructions}" if @d
  @orientation = 0
  @steps = [
    [0,+1], # North (Top) 0.
    [+1,0], # East (Right) 1.
    [0,-1], # South (Down) 2.
    [-1,0]  # West (Left) 3.
  ]
  @point = [0,0]
  puts "Start: #{@point}" if @d
  instructions.chars.each do |action|
    case action
    when ?G
      make_step
      puts "Move #{@orientation} => #{@point}" if @d
    when ?L
      turn_left
      puts "Turt Left: #{@orientation}." if @d
    when ?R
      turn_right
      puts "Turt Right: #{@orientation}." if @d
    else
      raise "Uncknown action #{action}."
    end
  end
  # Return true if came to the same point.
  return true if 0 == @point[0] && 0 == @point[1]
  # Return true if change the direction.
  return true if 0 != @orientation
  return false
end

def turn_right
  @orientation = (@orientation+1)%4
end
def turn_left
  @orientation = 0 == @orientation ? 3 : @orientation - 1
end
def make_step
  dx,dy = @steps[@orientation]
  @point[0] += dx
  @point[1] += dy
  @point
end


