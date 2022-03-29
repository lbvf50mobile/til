# Leetcode: 287. Find the Duplicate Number.
# https://leetcode.com/problems/find-the-duplicate-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 100 ms, faster than 100.00% of Ruby online submissions for Find the Duplicate Number.
# Memory Usage: 222.8 MB, less than 41.67% of Ruby online submissions for Find the Duplicate Number.
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  arr = Array.new(nums.size, false)
  nums.each do |x|
    return x if arr[x]
    arr[x] = true
  end
  raise "Unknown condition."
end
