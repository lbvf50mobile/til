# Leetcode: 8. String to Integer (atoi).
# https://leetcode.com/problems/string-to-integer-atoi/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 128 ms, faster than 6.45% of Ruby online submissions for String to Integer (atoi).
# Memory Usage: 210 MB, less than 75.81% of Ruby online submissions for String to Integer (atoi).
# @param {String} s
# @return {Integer}
def my_atoi(s)
  i = 0
  max = 2**31
  number = 0
  negative = false
  # 1. Skip whitespaces.
  while i < s.size && " " == s[i]; i += 1 ; end
  # 2. Define sign condition.
  if i < s.size && (?- == s[i] || ?+ == s[i])
    negative = true if ?- == s[i]
    i += 1
  end
  # 3. Accumulate digits.
  while i < s.size && /[0-9]/ === s[i] 
    number = number*10 + s[i].to_i
    number = max if number > max
    i += 1
  end

  return number * -1 if negative
  return number - 1 if number == max
  number
end
