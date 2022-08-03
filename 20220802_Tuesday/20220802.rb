# Leetcode: 378. Kth Smallest Element in a Sorted Matrix.
# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Chirst!
# = = = = = = = = = = = = = =
# Runtime: 227 ms, faster than 52.63% of Ruby online submissions for Kth Smallest Element in a Sorted Matrix.
# Memory Usage: 214.9 MB, less than 42.11% of Ruby online submissions for Kth Smallest Element in a Sorted Matrix.
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
# Based on:
# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/discuss/1547354/3-Different-Approaches-for-Interview-With-Comments
def kth_smallest(matrix, k)
  # Based on:
  # https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/discuss/1547354/3-Different-Approaches-for-Interview-With-Comments
  rows, cols = matrix.size, matrix[0].size
  lo, hi = matrix[0][0], matrix[rows-1][cols-1]
  while lo <= hi # Error was here.
    mid = lo + (hi-lo)/2
    count, maxNum = 0, lo
    (0...rows).each do |r|
      c = cols - 1
      while( c >=0 && matrix[r][c] > mid)
        c -= 1;
      end
      if  c >= 0
        count += (c+1)
        maxNum = [maxNum, matrix[r][c]].max
      else
        break
      end
    end
    if k == count
      return maxNum
    elsif count < k
      lo = mid + 1
    else
      hi = mid - 1
    end
  end
  return lo
end

