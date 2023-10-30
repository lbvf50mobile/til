# Leetcode: 1356. Sort Integers by The Number of 1 Bits.
# https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 60.00% of Ruby online submissions for Sort
# Integers by The Number of 1 Bits.
# Memory Usage: 211.1 MB, less than 60.00% of Ruby online submissions for Sort
# Integers by The Number of 1 Bits.
# 2023.10.30 Daily Challenge.
# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  arr.map{|x| [x,x.to_s(2).count(?1)]}.sort{|a,b| 
    if a[1] == b[1] 
      a[0] <=> b[0]
   else 
      a[1] <=> b[1]
   end
  }.map(&:first)
end
