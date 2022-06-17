# Leetcode: 5. Longest Palindromic Substring.
# https://leetcode.com/problems/longest-palindromic-substring/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1678 ms, faster than 50.52% of Ruby online submissions for Longest Palindromic Substring.
# Memory Usage: 211.2 MB, less than 36.98% of Ruby online submissions for Longest Palindromic Substring.
# @param {String} s
# @return {String}
def longest_palindrome(s)
  max = 0
  left,right = 0,0 # Need to avoid save strings. 
  (1...s.size).each do |c|
    # Odd size palindrome
    i,j = c,c
    while i >= 0 && j < s.size && s[i] == s[j]
      if j - i + 1 > max
        left,right = i,j
        max = j - i + 1
      end
      i -= 1; j += 1;
    end
    # Even size palindrome.
    i,j = c-1, c
    while i >= 0 && j < s.size && s[i] == s[j]
      if j - i + 1 > max
        left, right = i,j
        max = j - i + 1
      end
      i -= 1; j += 1;
    end
  end
  s[left..right]
end
