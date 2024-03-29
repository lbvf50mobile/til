# Leetcode: 2433. Find The Original Array of Prefix Xor.
# https://leetcode.com/problems/find-the-original-array-of-prefix-xor
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 289 ms, faster than 50.00% of Ruby online submissions for Find The
# Original Array of Prefix Xor.
# Memory Usage: 233.8 MB, less than 33.33% of Ruby online submissions for Find
# The Original Array of Prefix Xor.
# 2023.10.31 Daily challenge.
# @param {Integer[]} pref
# @return {Integer[]}
def find_array(pref)
  # Got tip from the Leetcode's solution:
  # https://leetcode.com/problems/find-the-original-array-of-prefix-xor/solution/
  ans = Array.new(pref.size,pref[0])
  (1...pref.size).each do |i|
    ans[i] = pref[i] ^ pref[i-1]
  end
  return ans
end
