# Leetcode: 1814. Count Nice Pairs in an Array.
# https://leetcode.com/problems/count-nice-pairs-in-an-array
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 267 ms, faster than 20.00% of Ruby online submissions for Count
# Nice Pairs in an Array.
# Memory Usage: 218.6 MB, less than 100.00% of Ruby online submissions for
# Count Nice Pairs in an Array.
# 2023.11.21 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  # nums[i] + rev(nums[j]) == nums[j] + rev(nums[i])
  # nums[i] - rev(nums[i]) = nums[j] - rev(nums[j])
  # 42 + 79 = 97 + 24
  # 42 - 24 = 97 - 79
  # 18 = 18
  mod = (10**9) + 7
  h = {} 
  ans = 0
  nums.each do |x|
    val = x - rev(x)
    h[val] ||= 0
    if h[val] > 0
      ans = (ans + h[val]) % mod
    end
    h[val] += 1
  end
  return ans
end

def rev(x)
  ans = 0
  while x > 0
    ans = (ans * 10) + (x%10)
    x /= 10
  end
  return ans
end
