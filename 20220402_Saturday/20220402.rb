# Leetcode: 680. Valid Palindrome II.
# https://leetcode.com/problems/valid-palindrome-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 528 ms, faster than 33.33% of Ruby online submissions for Valid Palindrome II.
# Memory Usage: 216 MB, less than 33.33% of Ruby online submissions for Valid Palindrome II.
# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  @s = s
  i,j = 0, @s.size - 1
  while i <= j
    if @s[i] != @s[j]
      return check_without(i) || check_without(j)
    end
    i += 1
    j -= 1
  end
  return true
end


def check_without(pos)
  i,j = 0, @s.size - 1
  while i <= j
    if pos == i
      i += 1
    elsif pos == j
      j -= 1
    else
      return false if @s[i] != @s[j]
      i += 1
      j -= 1
    end
  end
  return true
end
