# Leetcode: 1695. Maximum Erasure Value.
# https://leetcode.com/problems/maximum-erasure-value/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 397 ms, faster than 100.00% of Ruby online submissions for Maximum Erasure Value.
# Memory Usage: 235.3 MB, less than 100.00% of Ruby online submissions for Maximum Erasure Value.
# @param {Integer[]} nums
# @return {Integer}
def maximum_unique_subarray(nums)
  # Prefix Sum array.
  @ps = nums.clone
  (1...@ps.size).each do |i|
    @ps[i] += @ps[i-1]
  end
  max = nums[0]
  hsh = {}
  hsh[nums[0]] = 0 # Index as a value.
  l = 0
  (1...@ps.size).each do |r|
    value = nums[r]
    # Caluclate left border.
    dup = hsh[value]
    if dup && dup >= l
      l = dup + 1
    end
    hsh[value] = r
    tmp = sum(l,r)
    max = tmp if tmp > max
  end
  max
end
def sum(i,j)
  if 0 == i
    return @ps[j]
  else
    return @ps[j] - @ps[i-1]
  end
end
