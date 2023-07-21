# Leetcode: 673. Number of Longest Increasing Subsequence.
# https://leetcode.com/problems/number-of-longest-increasing-subsequence/
# @param {Integer[]} nums
# @return {Integer}
def find_number_of_lis(nums)
  # Based on:
  # https://leetcode.com/problems/number-of-longest-increasing-subsequence/solution/
  n = nums.size
  l = Array.new(n,1) # Length.
  c = Array.new(n,1) # Count
  ml = 0 # Max length.
  n.times do |i|
    (0...i).each do |j|
      if nums[j] < nums[i]
        if l[j] + 1 > l[i]
          l[i] = l[j] + 1
          c[i] = 0
          ml = l[i] if l[i] > ml
        end
        if l[j] + 1 == l[i]
          c[i] += c[j]
        end
      end
    end
  end
  ans = 0
  n.times do |i|
    if l[i] == ml
      ans += c[i]
    end
  end
  return ans
end
