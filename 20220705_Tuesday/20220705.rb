# Leetcode: 128. Longest Consecutive Sequence.
# https://leetcode.com/problems/longest-consecutive-sequence/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 266 ms, faster than 71.72% of Ruby online submissions for Longest Consecutive Sequence.
# Memory Usage: 225 MB, less than 25.25% of Ruby online submissions for Longest Consecutive Sequence.
# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  # Based on: https://leetcode.com/problems/longest-consecutive-sequence/solution/
  require 'set'
  set = Set.new(nums)
  streak = 0
  answer = 0
  set.each do |x|
    # Start building seq.
    if ! set.include?(x-1)
      streak = 1
      while set.include?(x+1)
        x += 1
        streak += 1
      end
      answer = streak if streak > answer
    end
  end
  answer
end
