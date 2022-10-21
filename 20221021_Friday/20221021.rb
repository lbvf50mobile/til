# Leetcode: 219. Contains Duplicate II.
# https://leetcode.com/problems/contains-duplicate-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 320 ms, faster than 59.68% of Ruby online submissions for Contains Duplicate II.
# Memory Usage: 228.9 MB, less than 29.03% of Ruby online submissions for Contains Duplicate II.
# 2022.10.21 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash = {}
  nums.each_with_index do |el,j|
    i = hash[el]
    if i && (j - i)  <= k
      return true
    end
    hash[el] = j
  end
  return false
end
