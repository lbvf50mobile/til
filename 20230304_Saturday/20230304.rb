# Leetcode: 2444. Count Subarrays With Fixed Bounds.
# https://leetcode.com/problems/count-subarrays-with-fixed-bounds/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 198 ms, faster than 100.00% of Ruby online submissions for Count Subarrays With Fixed Bounds.
# Memory Usage: 219 MB, less than 100.00% of Ruby online submissions for Count Subarrays With Fixed Bounds.
# 2023.03.04 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} min_k
# @param {Integer} max_k
# @return {Integer}
def count_subarrays(nums, min_k, max_k)
  # Based on:
  # https://leetcode.com/problems/count-subarrays-with-fixed-bounds/solution/
  ans = 0
  minp,maxp, lb = -1,-1,-1
  nums.each_with_index do |n,i|
    if n < min_k || n > max_k
      lb = i
    end
    if n == min_k
      minp = i
    end
    if n == max_k
      maxp = i
    end
    ans += [0, [minp,maxp].min - lb].max
  end
  return ans
end
