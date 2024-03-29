# Leetcode: 229. Majority Element II.
# https://leetcode.com/problems/majority-element-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 78 ms, faster than 53.33% of Ruby online submissions for Majority
# Element II.
# Memory Usage: 211.8 MB, less than 100.00% of Ruby online submissions for
# Majority Element II.
# 2023.10.05 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  bound = nums.size/3
  h = nums.tally
  ans = []
  h.each do |k,v|
    if v > bound
      ans.push(k)
    end
  end
  return ans
end
