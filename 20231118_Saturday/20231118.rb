# Leetcode: 1838. Frequency of the Most Frequent Element.
# https://leetcode.com/problems/frequency-of-the-most-frequent-element/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 295 ms, faster than 100.00% of Ruby online submissions for
# Frequency of the Most Frequent Element.
# Memory Usage: 225.4 MB, less than 100.00% of Ruby online submissions for
# Frequency of the Most Frequent Element.
# 2023.11.18 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_frequency(nums, k)
  # Based on:
  # https://leetcode.com/problems/frequency-of-the-most-frequent-element/solution/
  nums.sort!
  left,ans,curr = 0, 0, 0
  nums.size.times do |right|
    target = nums[right]
    curr += target
    while  (right - left + 1) * target - curr > k
      curr -= nums[left]
      left += 1
    end
    tmp = right - left + 1
    ans = tmp if tmp > ans
  end
  return ans
end
