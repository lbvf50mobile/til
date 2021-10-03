# Leetcode: 55. Jump Game.
# https://leetcode.com/problems/jump-game/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 76 ms, faster than 100.00% of Ruby online submissions for Jump Game.
# Memory Usage: 215 MB, less than 29.56% of Ruby online submissions for Jump Game.
# Runtime: 100 ms, faster than 59.13% of Ruby online submissions for Jump Game.
# Memory Usage: 214.9 MB, less than 54.78% of Ruby online submissions for Jump Game.
# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  farthest = 0
  (0...nums.size).each do |i|
    return false if i > farthest
    tmp = i + nums[i]
    farthest = tmp if tmp > farthest 
    return true if farthest >= nums.size - 1
  end
  raise "This line should not be reached."
end
