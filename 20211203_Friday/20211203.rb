# Leetcode: 152. Maximum Product Subarray.
# https://leetcode.com/problems/maximum-product-subarray/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 60 ms, faster than 60.58% of Ruby online submissions for Maximum Product Subarray.
# Memory Usage: 210.4 MB, less than 39.42% of Ruby online submissions for Maximum Product Subarray.
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  minimums = Array.new(nums.size,0)
  maximums = Array.new(nums.size,0)
  minimums[nums.size-1] = nums.last
  maximums[nums.size-1] = nums.last
  max = nums.last
  (0...(nums.size-1)).reverse_each do |i|
    x, nmin, nmax = nums[i], minimums[i+1], maximums[i+1]
    minimums[i] = min_from_three(x,x*nmin,x*nmax)
    maximums[i] = max_from_three(x,x*nmin,x*nmax) 
    max = maximums[i] if max < maximums[i]
  end
  max
end

def max_from_three(a,b,c)
  return a if a >= b && a >= c
  return b if b >= a && b >= c
  return c
end
def min_from_three(a,b,c)
  return a if a <= b && a <= c
  return b if b <= a && b <= c
  return c
end
