# Leetcode: 1328. Break a Palindrome.
# https://leetcode.com/problems/break-a-palindrome/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3985/
# @param {String} palindrome
# @return {String}
def break_palindrome(palindrome)
  return "" if 1 == palindrome.size
  (0...palindrome.size/2).each do |i|
    if ?a != palindrome[i]
      palindrome[i] = ?a
      return palindrome
    end
  end
  # All mirrored characters in the str are 'a'.
  palindrome[palindrome.size-1] = ?b
  return palindrome
end
