# Leetcode: 485. Max Consecutive Ones.
# https://leetcode.com/problems/max-consecutive-ones/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3982/
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max, counter = 0,0
  nums.each do |el|
    if 1 == el
      counter += 1
      max = counter if counter > max
    else
      counter = 0
    end
  end
  max
end
