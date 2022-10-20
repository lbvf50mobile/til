# Leetcode: 12. Integer to Roman.
# https://leetcode.com/problems/integer-to-roman/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 259 ms, faster than 14.72% of Ruby online submissions for Integer to Roman.
# Memory Usage: 211 MB, less than 39.88% of Ruby online submissions for Integer to Roman.
# @param {Integer} num
# @return {String}
# @param {Integer} num
# @return {String}
def int_to_roman(num)
  ans = ""
  values = [
    [1000, ?M],
    [900, "CM"],
    [500, ?D],
    [400, "CD"],
    [100, ?C],
    [90, "XC"],
    [50, ?L],
    [40, "XL"],
    [10, ?X],
    [9, "IX"],
    [5, ?V],
    [4, "IV"],
    [1,?I]
  ]
  while num > 0
    values.each do |n,str|
      if n <= num
        num -= n
        ans += str
        break # Important!
      else
        next
      end
    end
  end
  return ans
end
