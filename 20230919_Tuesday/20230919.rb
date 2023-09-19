# Leetcode: 287. Find the Duplicate Number.
# https://leetcode.com/problems/find-the-duplicate-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Chirst!
# = = = = = = = = = = = = = =
# Runtime: 110 ms, faster than 79.55% of Ruby online submissions for Find the
# Duplicate Number.
# Memory Usage: 218.6 MB, less than 86.36% of Ruby online submissions for Find
# the Duplicate Number.
# 2023.09.19 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  # Based on:
  # https://leetcode.com/problems/find-the-duplicate-number/discuss/72846/My-easy-understood-solution-with-O(n)-time-and-O(1)-space-without-modifying-the-array.-With-clear-explanation.
  slow = nums[0]
  fast = nums[nums[0]]
  while slow != fast
    slow = nums[slow]
    fast = nums[nums[fast]]
  end
  fast = 0
  while fast != slow
    fast = nums[fast]
    slow = nums[slow]
  end
  return slow
end
