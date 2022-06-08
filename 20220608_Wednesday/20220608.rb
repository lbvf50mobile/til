# Leetcode: 1332. Remove Palindromic Subsequences.
# https://leetcode.com/problems/remove-palindromic-subsequences/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 130 ms, faster than 100.00% of Ruby online submissions for Remove Palindromic Subsequences.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Remove Palindromic Subsequences.
# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  # Any palindrome could be removed in 2 steps.
  # First all "a", second all "b".
  # Hint from the:
  # https://leetcode.com/problems/remove-palindromic-subsequences/discuss/490352/Java-Use-the-Trick-%3A-the-input-string-only-consists-of-letters-'a'-and-'b'!!
  return 0 if s.empty?
  return 1 if s == s.reverse
  return 2
end
