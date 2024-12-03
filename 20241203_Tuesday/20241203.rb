# Leetcode: 2109. Adding Spaces to a String
# https://leetcode.com/problems/adding-spaces-to-a-string/?envType=daily-question&envId=2024-12-03
# @param {String} s
# @param {Integer[]} spaces
# @return {String}
# TLE
def add_spaces(s, spaces)
  ans = ""
  j = 0 # Pointer in spaces.
  (0...s.size).each do |i|
    if j < spaces.size && i == spaces[j] 
      ans += " "
      j += 1
    end
    ans += s[i]
  end
  return ans
end
