# Leetcode: 1465. Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts.
# https://leetcode.com/problems/maximum-area-of-a-piece-of-cake-after-horizontal-and-vertical-cuts/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 244 ms, faster than 33.33% of Ruby online submissions for Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts.
# Memory Usage: 216.8 MB, less than 33.33% of Ruby online submissions for Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts.
# @param {Integer} h
# @param {Integer} w
# @param {Integer[]} horizontal_cuts
# @param {Integer[]} vertical_cuts
# @return {Integer}
def max_area(h, w, horizontal_cuts, vertical_cuts)
  # Need maximum horizontal multyplay on maximum vertical.
  prev = 0
  max_h = 0
  horizontal_cuts.sort.each do |i|
    size = i - prev
    max_h = size if size > max_h
    prev = i
  end
  size = h - prev
  max_h = size if size > max_h

  prev = 0
  max_v = 0
  vertical_cuts.sort.each do |i|
    size = i - prev
    max_v = size if size > max_v
    prev = i
  end
  size = w - prev
  max_v = size if size > max_v
  (max_h*max_v)% ((10**9) + 7)
end
