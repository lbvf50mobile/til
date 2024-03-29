# Leetcode: 223. Rectangle Area.
# https://leetcode.com/problems/rectangle-area/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# 2022.11.17 Daily Challenge.
# @param {Integer} ax1
# @param {Integer} ay1
# @param {Integer} ax2
# @param {Integer} ay2
# @param {Integer} bx1
# @param {Integer} by1
# @param {Integer} bx2
# @param {Integer} by2
# @return {Integer}
def compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
  for_del = minus(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
  return area(ax1,ax2,ay1,ay2) + area(bx1,bx2,by1,by2) - for_del
end

def area(x1,x2,y1,y2)
  (x2-x1).abs * (y2-y1).abs
end

def minus(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
  # Check X intersecton.
  # a start before b ends.
  # a ends after b starts.
  return 0 if !(ax1 <= bx2 && bx1 <= ax2)
  # Check Y intersection.
  # a start before b ends.
  # a ends after b starts.
  return 0 if !(ay1 <= by2 && by1 <= ay2)
  zx1 = [ax1,bx1].max
  zx2 = [ax2,bx2].min
  zy1 = [ay1,by1].max
  zy2 = [ay2,by2].min
  return (zx1-zx2).abs * (zy1-zy2).abs
end
