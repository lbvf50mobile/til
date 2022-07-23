# Leetcode: 315. Count of Smaller Numbers After Self.
# https://leetcode.com/problems/count-of-smaller-numbers-after-self/
# @param {Integer[]} nums
# @return {Integer[]}
def count_smaller(nums)
  # Based on:
  # https://leetcode.com/problems/count-of-smaller-numbers-after-self/discuss/1045763/Merge-sort-solution
  @counts = Array.new(nums.size, 0)
  indexed_nums = nums.zip((0...nums.size).to_a)
  merge(indexed_nums)
  @counts
end

def merge(nums)
  return nums if 1 == nums.size
  curr_stack = []
  left = merge(nums[0...nums.size/2])
  right = merge(nums[nums.size/2..-1])
  while (!left.empty?) && (!right.empty?)
    if left[0][0] > right[0][0]
      @counts[left[0][1]] += right.size
      curr_stack.push(left.pop())
    else
      curr_stack.push(right.pop())
    end
  end
  if (!left.empty?)
    curr_stack += left
  else
    curr_stack += right
  end
  curr_stack
end
