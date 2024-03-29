# Leetcode: 1523. Count Odd Numbers in an Interval Range.
# https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 88 ms, faster than 50.98% of Ruby online submissions for Count Odd Numbers in an Interval Range.
# Memory Usage: 210.9 MB, less than 72.55% of Ruby online submissions for Count Odd Numbers in an Interval Range.
# 2023.02.13 Daily Challenge.
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  size = high - low + 1
  if low.even?
    # 10 - 8 + 1 = 3; 3-1 = 2; 2/2 = 1;
    size -= 1 if size.odd?
  else
    # 7-3+1 = 5; 5+1 = 6; 6/2 = 3;
    size += 1 if size.odd?
  end
  size/2
end
