# Leetcode: 1814. Count Nice Pairs in an Array.
# https://leetcode.com/problems/count-nice-pairs-in-an-array
# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  # nums[i] + rev(nums[j]) == nums[j] + rev(nums[i])
  # nums[i] - nums[i] = nums[j] - nums[j]
  h = []
  ans = 0
  nums.each do |x|
    val = x - rev(x)
    h[x] ||= 0
    if h[x] > 0
      ans += h[x]
    end
    h[x] += 1
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
