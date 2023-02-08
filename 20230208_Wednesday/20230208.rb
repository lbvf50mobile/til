# Leetcode: 45. Jump Game II.
# https://leetcode.com/problems/jump-game-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 96 ms, faster than 78.95% of Ruby online submissions for Jump Game II.
# Memory Usage: 211.9 MB, less than 94.74% of Ruby online submissions for Jump Game II.
# 2023.02.08 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  # Based on:
  # https://leetcode.com/problems/jump-game-ii/
  return 0 if 1 == nums.size
  steps = 0
  cur,pos = 0, 0
  (0...nums.size-1).each do |i|
    jump = nums[i]
    pos = [pos, jump + i].max
    if i == cur
      # Step only when current range is 
      # finised.
      cur = pos
      steps += 1
    end
  end
  return steps
end
