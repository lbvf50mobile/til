# Leetcode: 525. Contiguous Array.
# https://leetcode.com/problems/contiguous-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 176 ms, faster than 100.00% of Ruby online submissions for Contiguous Array.
# Memory Usage: 228.6 MB, less than 10.00% of Ruby online submissions for Contiguous Array.
# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  # Code based on: https://leetcode.com/problems/contiguous-array/solution/
  arr = Array.new(2*nums.size + 1,-2)
  count = 0
  max = 0
  arr[nums.size] = - 1
  nums.each_with_index do |value,i|
    count += (value == 1 ? 1 : -1)
    index = count + nums.size
    if arr[index] >= - 1     
      max = i - arr[index] if max < i - arr[index]
    else
      arr[index] = i
    end
  end
  max
end
