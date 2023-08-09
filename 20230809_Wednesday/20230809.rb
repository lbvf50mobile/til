# Leetcode: 2616. Minimize the Maximum Difference of Pairs.
# https://leetcode.com/problems/minimize-the-maximum-difference-of-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 392 ms, faster than 100.00% of Ruby online submissions for Minimize
# the Maximum Difference of Pairs.
# Memory Usage: 220.5 MB, less than 100.00% of Ruby online submissions for
# Minimize the Maximum Difference of Pairs.
# 2023.08.09 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} p
# @return {Integer}
def minimize_max(nums, pe)
  # Based on:
  # https://leetcode.com/problems/minimize-the-maximum-difference-of-pairs/solution/
  nums.sort!
  @nums = nums
  @n = nums.size
  l,r = 0, @nums[-1] - @nums[0]
  while l < r
    m = l + (r - l)/2
    if count_valid_pairs(m) >= pe
      r = m
    else
      l = m + 1
    end
  end
  return l
end

def count_valid_pairs(threshold)
  index, count = 0, 0
  while index < @n-1
    if @nums[index+1] - @nums[index] <= threshold
      count += 1
      index += 1
    end
    index += 1
  end
  return count
end
