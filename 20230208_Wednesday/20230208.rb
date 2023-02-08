# Leetcode: 45. Jump Game II.
# https://leetcode.com/problems/jump-game-ii/
# @param {Integer[]} nums
# @return {Integer}
# Fails.
# [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]
def jump(nums)
  # Hint from the Leetcode's solution.
  return 0 if 1 == nums.size
  farest, steps = -1, 0
  nums.each_with_index do |i,range|
    if i+range > farest
      farest = i + range
      steps += 1
    end
    if farest >= nums.size - 1
      return steps
    end
  end
  raise "This line could not be implmeneted."
end
