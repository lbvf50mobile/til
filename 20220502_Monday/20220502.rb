# Leetcode: 905. Sort Array By Parity.
# https://leetcode.com/problems/sort-array-by-parity/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 149 ms, faster than 33.33% of Ruby online submissions for Sort Array By Parity.
# Memory Usage: 212.2 MB, less than 7.69% of Ruby online submissions for Sort Array By Parity.
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  nums.select(&:even?) + nums.select(&:odd?)
end
