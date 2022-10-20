# Leetcode: 12. Integer to Roman.
# https://leetcode.com/problems/integer-to-roman/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 215 ms, faster than 44.78% of Ruby online submissions for Integer to Roman.
# Memory Usage: 211.2 MB, less than 15.34% of Ruby online submissions for Integer to Roman.
# @param {Integer} num
# @return {String}
# @param {Integer} num
# @return {String}
def int_to_roman(num)
  ans = ""
  while num > 0
    if 1000 <= num
      num -= 1000
      ans += ?M
    elsif 900 <= num
      num -= 900
      ans += 'CM'
    elsif 500 <= num
      num -= 500
      ans += ?D
    elsif 400 <= num
      num -= 400
      ans += 'CD'
    elsif 100 <= num
      num -= 100
      ans += ?C
    elsif 90 <= num
      num -= 90
      ans += 'XC'
    elsif 50 <= num
      num -= 50
      ans += ?L 
    elsif 40 <= num
      num -= 40
      ans += 'XL'
    elsif 10 <= num
      num -= 10
      ans += ?X
    elsif 9 <= num
      num -= 9
      ans += 'IX'
    elsif 5 <= num
      num -= 5
      ans += ?V
    elsif 4 <= num
      num -= 4
      ans += "IV"
    elsif 1 <= num
      num -= 1
      ans += ?I
    end
  end
  return ans
end
