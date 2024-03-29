# Leetcode: 228. Summary Ranges.
# https://leetcode.com/problems/summary-ranges/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 55 ms, faster than 100.00% of Ruby online submissions for Summary
# Ranges.
# Memory Usage: 211 MB, less than 96.30% of Ruby online submissions for Summary
# Ranges.
# 2023.06.12 Daily Challenge.
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return nums if nums.empty?
  # Array of pairs.
  ans = []
  ans.push([nums[0],nums[0]])
  (1...nums.size).each do |i|
    a = ans.last.last
    b = nums[i]
    if a + 1 == b
      ans.last[1] = b
    else
      ans.push([b,b])
    end
  end
  ans = ans.map{|a,b| 
    if a == b
      a.to_s
    else
      "#{a}->#{b}"
    end
  }
  return ans
end
