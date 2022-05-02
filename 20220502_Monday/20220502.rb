# Leetcode: 905. Sort Array By Parity.
# https://leetcode.com/problems/sort-array-by-parity/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 216 ms, faster than 5.13% of Ruby online submissions for Sort Array By Parity.
# Memory Usage: 211.8 MB, less than 46.15% of Ruby online submissions for Sort Array By Parity.
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  ans = Array.new(nums.size)
  i,j = 0, nums.size - 1
  nums.each do |x|
    if x.even?
      ans[i] = x; i += 1;
    else
      ans[j] = x; j -= 1;
    end
  end
  ans
end
