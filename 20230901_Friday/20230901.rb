# Leetcode: 338. Counting Bits.
# https://leetcode.com/problems/counting-bits/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 90.36% of Ruby online submissions for Counting
# Bits.
# Memory Usage: 216 MB, less than 68.67% of Ruby online submissions for Counting
# Bits.
# 2023.09.01 Daily Challenge.
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  # Based on:
  # https://leetcode.com/problems/counting-bits/discuss/1808002/A-very-very-EASY-to-go-EXPLANATION
  return [0] if 0 == n
  return [0,1] if 1 == n
  ans = Array.new(n+1, 0)
  ans[0] = 0
  ans[1] = 1
  (2..n).each do |i|
    if i.even?
      ans[i] = ans[i/2]
    else
      ans[i] = 1 + ans[i/2]
    end
  end
  return ans
end

