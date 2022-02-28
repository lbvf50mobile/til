# Leetcode: 228. Summary Ranges.
# https://leetcode.com/problems/summary-ranges/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 68 ms, faster than 89.47% of Ruby online submissions for Summary Ranges.
# Memory Usage: 211 MB, less than 26.32% of Ruby online submissions for Summary Ranges.
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?
  @ans = []
  pair = [nums[0],nums[0]]
  (1...nums.size).each do |i|
    prev, curr = nums[i-1], nums[i]
    if prev+1 != curr
      insert(pair)
      pair[0], pair[1] = curr, curr
    else
      pair[1] = curr
    end
  end
  insert(pair)
  @ans
end

def insert(pair)
  if pair.first == pair.last
    @ans.push(pair.last.to_s)
  else
    @ans.push("#{pair[0].to_s}->#{pair[1].to_s}")
  end
end

