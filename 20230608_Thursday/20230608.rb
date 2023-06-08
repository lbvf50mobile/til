# Leetcode: 1351. Count Negative Numbers in a Sorted Matrix.
# https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 72.73% of Ruby online submissions for Count
# Negative Numbers in a Sorted Matrix.
# Memory Usage: 213.1 MB, less than 36.36% of Ruby online submissions for Count
# Negative Numbers in a Sorted Matrix.
# 2023.06.08 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  grid.flatten.count{|x| x < 0}
end
