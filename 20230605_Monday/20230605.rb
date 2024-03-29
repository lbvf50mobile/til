# Leetcode: 1232. Check If It Is a Straight Line.
# https://leetcode.com/problems/check-if-it-is-a-straight-line/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 75.00% of Ruby online submissions for Check If It
# Is a Straight Line.
# Memory Usage: 210.9 MB, less than 50.00% of Ruby online submissions for Check
# If It Is a Straight Line.
# 2023.06.05 Daily Challenge.
# @param {Integer[][]} coordinates
# @return {Boolean}
def gdx(a,b) # get dx;
  b[0] - a[0]
end
def gdy(a,b) # get dy;
  b[1] - a[1]
end

def check_straight_line(coordinates)
  # Based on:
  # https://leetcode.com/problems/check-if-it-is-a-straight-line/solution/
  c = coordinates
  dx = gdx(c[0], c[1])
  dy = gdy(c[0], c[1])
  (2...c.size).each do |i|
    if dx * gdy(c[0],c[i]) != dy * gdx(c[0],c[i])
      return false
    end
  end
  return true
end
