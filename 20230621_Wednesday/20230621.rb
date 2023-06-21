# Leetcode: 2448. Minimum Cost to Make Array Equal.
# https://leetcode.com/problems/minimum-cost-to-make-array-equal/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 859 ms, faster than 100.00% of Ruby online submissions for Minimum
# Cost to Make Array Equal.
# Memory Usage: 246.2 MB, less than 100.00% of Ruby online submissions for
# Minimum Cost to Make Array Equal.
# 2023.06.21 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer[]} cost
# @return {Integer}
def min_cost(nums, cost)
  # Based on:
  # https://leetcode.com/problems/minimum-cost-to-make-array-equal/solution/
  @nm, @cst = nums, cost
  l,r = nums.min, nums.max
  ans = get_cost(nums[0])
  while l < r
    m = l + (r-l)/2
    c1 = get_cost(m)
    c2 = get_cost(m+1)
    ans = [c1,c2].min
    if c1 > c2
      l = m + 1
    else
      r = m 
    end
  end
  return ans
end

def  get_cost(base)
  @nm.zip(@cst).sum{|n,c| (base - n).abs * c}
end
