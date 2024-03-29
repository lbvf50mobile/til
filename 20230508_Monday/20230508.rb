# Leetcode: 1572. Matrix Diagonal Sum.
# https://leetcode.com/problems/matrix-diagonal-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 13.33% of Ruby online submissions for Matrix
# Diagonal Sum.
# Memory Usage: 212.2 MB, less than 80.00% of Ruby online submissions for Matrix
# Diagonal Sum.
# 2023.05.08 Daily Challenge.
# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  n = mat.size
  ans = 0
  (0...n).each do |i|
    ans += mat[i][i]
    ans += mat[i][n-1-i]
  end
  if n.odd?
    ans -= mat[n/2][n/2]
  end
  return ans
end
