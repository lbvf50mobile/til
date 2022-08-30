# Leetcode: 48. Rotate Image.
# https://leetcode.com/problems/rotate-image/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 148 ms, faster than 18.48% of Ruby online submissions for Rotate Image.
# Memory Usage: 211 MB, less than 81.52% of Ruby online submissions for Rotate Image.
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  dest = matrix
  source = Array.new(matrix.size).map.with_index{|_,i| matrix[i].clone}
  n = matrix.size
  j_from = 0 # Outer column O...n;
  i_to = 0 # Outer row 0...n;
  n.times do
    i_from = n - 1 # Inner row n...0;
    j_to = 0 # Inner column 0...n;
    n.times do 
      dest[i_to][j_to] = source[i_from][j_from]
      i_from -= 1
      j_to += 1
    end
    j_from += 1
    i_to += 1
  end
end
