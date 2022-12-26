# Leetcode: 55. Jump Game.
# https://leetcode.com/problems/jump-game/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 163 ms, faster than 70.77% of Ruby online submissions for Jump Game.
# Memory Usage: 216 MB, less than 87.69% of Ruby online submissions for Jump Game.
# 2022.12.26 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  l = nums.size - 1
  j = 0 # j is maximum index player could reach.
  nums.each_with_index do |val,i|
    return false if j < i # Could not reach.
    j = i + val if j < i + val # Push j further.
    return true if j >= l # It is possible to reach last index.
  end
  raise "This could not be reached"
end
