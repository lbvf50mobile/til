# Leetcode: 944. Delete Columns to Make Sorted.
# https://leetcode.com/problems/delete-columns-to-make-sorted/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1022 ms, faster than 100.00% of Ruby online submissions for Delete Columns to Make Sorted.
# Memory Usage: 227.6 MB, less than 100.00% of Ruby online submissions for Delete Columns to Make Sorted.
# 2023.01.03 Daily Challenge.
# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  # Convert strings to matrix.
  # And make columns rows and make rows columns
  mtrx = strs.map(&:chars).transpose
  # Retrun number unsorted rows, those rows need to be deleted.
  return mtrx.count{|x| !sorted(x)}
end

def sorted(x)
  (1...x.size).each do |i|
    return false if x[i-1] > x[i]
  end
  return true
end
