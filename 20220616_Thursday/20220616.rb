# Leetcode: 5. Longest Palindromic Substring.
# https://leetcode.com/problems/longest-palindromic-substring/
# @param {String} s
# @return {String}
# TLE
def longest_palindrome(s)
  max = 1
  ans = s[0] 
  (1...s.size).each do |c|
    # Odd size palindrome.
    tmp = s[c]
    i,j = c-1, c+1
    while i >= 0 && j < s.size && s[i] == s[j]
      tmp = s[i] + tmp + s[j]
      tmp_size = j - i + 1
      if max < tmp_size
        ans = tmp
        max = tmp_size
      end
      i-=1; j+=1;
    end
    # Even size palindrome.
    tmp = ""
    i,j = c-1, c
    while i >=0 && j < s.size && s[i] == s[j]
      tmp = s[i] + tmp + s[j]
      tmp_size = j-i+1
      if max < tmp_size
        ans = tmp
        max = tmp_size
      end
      i-=1; j+=1;
    end
  end
  return ans
end
