# Leetcode: 560. Subarray Sum Equals K.
# https://leetcode.com/problems/subarray-sum-equals-k/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 303 ms, faster than 5.88% of Ruby online submissions for Subarray Sum Equals K.
# Memory Usage: 219.7 MB, less than 7.35% of Ruby online submissions for Subarray Sum Equals K.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  psa = [] # Prefix Sum Array.
  psa.push(nums.first)
  nums[1..-1].each do |el|
    psa.push(el + psa.last)
  end
  ans = 0
  hash_counter = {}
  psa.each do |sum|
    ans += 1 if sum == k
    if hash_counter[sum-k]
      ans += hash_counter[sum-k]
    end
    hash_counter[sum] ||= 0
    hash_counter[sum] += 1
  end
  ans
end
