# Leetcode: 13. Roman to Integer.
# https://leetcode.com/problems/roman-to-integer/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 174 ms, faster than 51.06% of Ruby online submissions for Roman to Integer.
# Memory Usage: 211 MB, less than 43.90% of Ruby online submissions for Roman to Integer.
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  answer = 0
  i = 0
  two = {
    "IV" => 4,
    "IX" => 9,
    "XL" => 40,
    "XC" => 90,
    "CD" => 400,
    "CM" => 900
  }
  one = {
    ?I => 1,
    ?V => 5,
    ?X => 10,
    ?L => 50,
    ?C => 100,
    ?D => 500,
    ?M => 1000,
  }
  while i < s.size
    if (i < s.size - 1) && two[s[i]+s[i+1]]
      answer += two[s[i] + s[i+1]]
      i += 2
      next
    end
    if one[s[i]]
      answer += one[s[i]]
      i += 1
      next
    else
      raise "Cannot find value for #{s[i]}."
    end
  end
  return answer
end
