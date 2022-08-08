# Leetcode: 300. Longest Increasing Subsequence.
# https://leetcode.com/problems/longest-increasing-subsequence/
# @param {Integer[]} nums
# @return {Integer}
# Does not works.
def length_of_lis(nums)
  return 0 if nums.empty?
  @dp = [nums[0]]
  @nums = nums
  (1...nums.size).each do |i|
    insert(@nums[i])
  end
  return @dp.size
end

def insert(n)
  i,j = 0, @dp.size-1
  while i <= j
    mid = i + (j-i)/2
    if n <= @dp[mid] && (mid == 0 || n >= @dp[mid-1])
      @dp[mid] = n
      break
    elsif mid > 0 && n < @dp[mid] && n < @dp[mid-1]
      j = mid - 1
    else
      i = mid + 1
    end
  end
  @dp.push(n) if i >= @dp.size
end

