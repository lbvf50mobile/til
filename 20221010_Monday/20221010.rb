# Leetcode: 1328. Break a Palindrome.
# https://leetcode.com/problems/break-a-palindrome/
# @param {String} palindrome
# @return {String}
def break_palindrome(palindrome)
  pal = palindrome
  if pal.chars.uniq.join == ?a
    if 1 == pal.size
      return ""
    else
      return pal[0...-1] + ?b
    end
  end
  ans = pal.chars
  (0...ans.size).each do |i|
    char = ans[i]
    next if ?a == char
    ans[i] = (ans[i].ord - 1).chr
    break
  end
  ans.join
end
