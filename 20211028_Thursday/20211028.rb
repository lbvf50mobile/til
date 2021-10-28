# Leetcode: 15. 3Sum.
# https://leetcode.com/problems/3sum/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 368 ms, faster than 86.15% of Ruby online submissions for 3Sum.
# Memory Usage: 212.7 MB, less than 58.08% of Ruby online submissions for 3Sum.
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  # Based on:
  # https://leetcode.com/problems/3sum/discuss/7392/Python-easy-to-understand-solution-(O(n*n)-time).
  ans = []
  nums.sort!
  (0...nums.size-2).each do |i|
    next if i > 0 && nums[i] == nums[i-1]
    l,r = i+1,nums.size - 1
    while l < r
      s = nums[i] + nums[l] + nums[r]
      if s < 0
        l += 1
      elsif s > 0
        r -= 1
      else
        ans.push([nums[i],nums[l],nums[r]])
        while l < r && nums[l] == nums[l+1]; l += 1; end
        while l < r && nums[r] == nums[r-1]; r -= 1; end
        l += 1
        r -= 1
      end
    end
  end
  ans
end
