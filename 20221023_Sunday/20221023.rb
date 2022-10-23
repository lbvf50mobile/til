# Leetcode: 645. Set Mismatch.
# https://leetcode.com/problems/set-mismatch/
# @param {Integer[]} nums
# @return {Integer[]}
# Fail.
# [1,5,3,2,2,7,6,4,8,9]
def find_error_nums(nums)
  max = nums.max
  counter = Array.new(max+1,0)
  duplicate = 0
  nums.each do |el|
    counter[el] += 1
    if 2 == counter[el]
      duplicate = el
    end
  end
  missed = 0
  (1..max).each do |i|
    if 0 == counter[i]
      missed = i
      break
    end
  end
  return [max, max + 1] if 0 == missed
  return [duplicate, missed]
end
