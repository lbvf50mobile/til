# Leetcode: 1323. Maximum 69 Number.
# https://leetcode.com/problems/maximum-69-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 118 ms, faster than 100.00% of Ruby online submissions for Maximum 69 Number.
# Memory Usage: 211.1 MB, less than 55.56% of Ruby online submissions for Maximum 69 Number.
# 2022.11.07 Daily Challenge.
# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
  x = num.to_s
  (0...x.size).each do |i|
    if ?6 == x[i]
      x[i] = ?9
      return x.to_i
    end
  end
  return num
end
