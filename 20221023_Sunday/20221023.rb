# Leetcode: 645. Set Mismatch.
# https://leetcode.com/problems/set-mismatch/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 246 ms, faster than 100.00% of Ruby online submissions for Set Mismatch.
# Memory Usage: 214 MB, less than 100.00% of Ruby online submissions for Set Mismatch.
# 20221023 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  max = nums.size 
  counter = Array.new(max+1,0)
  duplicate = 0
  nums.each do |el|
    counter[el] += 1
    if 2 == counter[el]
      duplicate = el
    end
  end
  substituted = 0
  (1..max).each do |i|
    if 0 == counter[i]
      substituted = i
      break
    end
  end
  return [duplicate, substituted]
end
