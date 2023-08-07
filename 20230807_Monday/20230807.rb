# Leetcode: 74. Search a 2D Matrix.
# https://leetcode.com/problems/search-a-2d-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 72 ms, faster than 81.71% of Ruby online submissions for Search a 2D
# Matrix.
# Memory Usage: 211.1 MB, less than 65.85% of Ruby online submissions for Search
# a 2D Matrix.
# 2023.07.08 Daily Challenge.
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  # Find border indices.
  m, n = matrix.size, matrix[0].size
  # Find border elements. 
  f,l = matrix[0][0], matrix[m-1][n-1]
  # Check that target is between these elements.
  return false if !target.between?(f,l)
  # Start outer bsearch for a row.
  l,r = 0, m-1
  # There is could be one row.
  while l <= r
    mid = l + (r-l)/2
    x = matrix[mid]
    # Row is found, target could be in it.
    if target.between?(x[0], x[n-1])
      # Use bsearch method.
      tmp = x.bsearch{|v| v >= target}
      # Check.
      return true if tmp == target
      return false
    end
    # What if need to move right?
    if x[n-1] < target 
      l = mid + 1
    # If no need to move right, move left.
    # Case for standing in one place hanled above.
    else
      r = mid - 1
    end
  end
  # Cannot find and element.
  return false
end
