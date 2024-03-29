# Leetcode: 435. Non-overlapping Intervals.
# https://leetcode.com/problems/non-overlapping-intervals/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 315 ms, faster than 68.97% of Ruby online submissions for
# Non-overlapping Intervals.
# Memory Usage: 222.4 MB, less than 44.83% of Ruby online submissions for
# Non-overlapping Intervals.
# 2023.07.19 Daily Challenge.
# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
  # Based on:
  # https://leetcode.com/problems/non-overlapping-intervals/solution/
  intervals.sort_by!{|x| x[1]}
  ans = 0
  k = -Float::INFINITY
  intervals.each do |x,y|
    if x >= k
      k = y
    else
      ans += 1
    end
  end
  return ans
end
