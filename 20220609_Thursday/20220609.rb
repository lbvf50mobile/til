# Leetcode: 167. Two Sum II - Input Array Is Sorted.
# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 153 ms, faster than 20.56% of Ruby online submissions for Two Sum II - Input Array Is Sorted.
# Memory Usage: 211.9 MB, less than 70.56% of Ruby online submissions for Two Sum II - Input Array Is Sorted.
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hsh = {}
  numbers.each_with_index do |el,j|
    if hsh[target - el]
      return [hsh[target-el] + 1, j + 1]
    else
      hsh[el] = j
    end
  end
  raise "Could not find solution."
end
