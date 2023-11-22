# Leetcode: 1424. Diagonal Traverse II.
# https://leetcode.com/problems/diagonal-traverse-ii
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# And even more TLE.
# 2023.11.22 Daily Challenge.
# @param {Integer[][]} nums
# @return {Integer[]}
def find_diagonal_order(nums)
  ans = []
  # First iterate over all lines.
  # Even unexisted ones.
  i = 0
  max_col_index = Float::INFINITY
  max = 0
  while true
    touched = false
    j = 0 # Start from first column.

    # Moving up. From current till zero.
    # Optimization to jump to the existed row.
    bt = i # Bottom.
    if bt > (nums.size - 1)
      max_col_index = max - 1
      diff = bt - (nums.size - 1) 
      j += diff
      bt = nums.size - 1
      break if j > max_col_index
    else
      max = nums[i].size if nums[i].size > max
    end
    (0..bt).reverse_each do |ii|
      if ii < nums.size && j < nums[ii].size # Column must be in this row.
        ans.push(nums[ii][j])
        touched = true
      end
      j += 1 # Move to the next column.
    end
    break if ! touched
    i += 1
  end
  return ans
end
