# Leetcode: 118. Pascal's Triangle.
# https://leetcode.com/problems/pascals-triangle
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 68 ms, faster than 63.81% of Ruby online submissions for Pascal's
# Triangle.
# Memory Usage: 211 MB, less than 49.52% of Ruby online submissions for Pascal's
# Triangle.
# 2023.09.08 Daily Challenge.
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  # Create blank place holders.
  ans = []
  num_rows.times do |i|
    ans.push Array.new(i+1,0)
    ans[-1][0] = 1
    ans[-1][-1] = 1
  end
  return ans if num_rows < 3
  # Base rule ans[i][j] = ans[i-1][j-1] + ans[i-1][j];
  (2...num_rows).each do |i|
    # From j = 1 till j = size - 2;
    (1..(ans[i].size-2)).each do |j|
      ans[i][j] = ans[i-1][j-1] + ans[i-1][j]
    end
  end
  return ans
end

# Reasoning. About rows sizes.
# 1 = 1
# 2 = 2
# 3 = 3

