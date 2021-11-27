# Leetcode: 238. Product of Array Except Self.
# https://leetcode.com/problems/product-of-array-except-self/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 208 ms, faster than 19.05% of Ruby online submissions for Product of Array Except Self.
# Memory Usage: 218.4 MB, less than 10.32% of Ruby online submissions for Product of Array Except Self
# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  # To simplify code append and prepend one.
  nums.push(1)
  nums.unshift(1)
  sf,pr,ans = nums.clone, nums.clone, nums.clone
  (1...nums.size).each do |i|
    pr[i] = pr[i-1] * nums[i]
  end
  (1...nums.size-1).reverse_each do |i|
    sf[i] = nums[i] * sf[i+1]
  end
  (1...nums.size-1).each do |i|
    ans[i] = pr[i-1] * sf[i+1]
  end
  ans.shift()
  ans.pop()
  ans
end
