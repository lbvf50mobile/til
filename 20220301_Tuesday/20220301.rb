# Leetcode: 338. Counting Bits.
# https://leetcode.com/problems/counting-bits/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 181 ms, faster than 64.18% of Ruby online submissions for Counting Bits.
# Memory Usage: 216 MB, less than 43.28% of Ruby online submissions for Counting Bits.
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  return [0] if 0 == n
  return [0,1] if 1 == n
  ans = Array.new(n+1,0)
  ans[0],ans[1] = 0, 1
  curr_power = 0
  next_power = 1
  curr_value = 1<<curr_power
  next_value = 1<<next_power
  (2..n).each do |i|
    if next_value == i
      curr_power += 1
      next_power += 1
      curr_value = 1<<curr_power
      next_value = 1<<next_power
    end
    index = i ^ curr_value
    ans[i] = 1 + ans[index]
  end
  return ans
end
