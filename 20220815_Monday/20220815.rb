# Leetcode: 13. Roman to Integer.
# https://leetcode.com/problems/roman-to-integer/
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  answer = 0
  i = 0
  two = [
    "IV" => 4,
    "IX" => 9,
    "XL" => 50,
    "XC" => 90,
    "CD" => 500,
    "CM" => 
  ]
  while i < s.size
    if i < s.size - 1
      if "IV" == (s[i] + s[i+1])
        answer += 4
      end
      if "IX" == (s[i] + s[i+1])
        answer += 9
      end
      if "XL" == (s[i] + s[i+1])
        answer += 50
      end
    end
    i += 1
  end
    
end
