# Leetcode: 973. K Closest Points to Origin.
# https://leetcode.com/problems/k-closest-points-to-origin/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 248 ms, faster than 79.59% of Ruby online submissions for K Closest Points to Origin.
# Memory Usage: 213 MB, less than 53.06% of Ruby online submissions for K Closest Points to Origin.
# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  x = points.map{|point| [ point[0]*point[0] + point[1]*point[1], point]}
  x.sort_by{|arr| arr.first}[0...k].map(&:last)
end

