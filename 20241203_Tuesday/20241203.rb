# Leetcode: 2109. Adding Spaces to a String
# https://leetcode.com/problems/adding-spaces-to-a-string
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 455 ms, faster than 50.00% of Ruby online submissions for Adding
# Spaces to a String.
# Memory Usage: 225.7 MB, less than 50.00% of Ruby online submissions for
# Adding Spaces to a String.
# 2024.12.03 Daily Challenge.
# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
  total = s.size + spaces.size
  ans = String.new(capacity: total)
  i = 0 # Pointer in the s.
  j = 0 # Pointer ins the spaces.
  (0...total).each do |k|
    if j < spaces.size && i == spaces[j]
      ans[k] = " "
      j += 1
      next
    end
    ans[k] =s[i]
    i += 1
  end
  return ans
end
