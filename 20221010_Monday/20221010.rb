# Leetcode: 1328. Break a Palindrome.
# https://leetcode.com/problems/break-a-palindrome/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 84 ms, faster than 100.00% of Ruby online submissions for Break a Palindrome.
# Memory Usage: 211 MB, less than 50.00% of Ruby online submissions for Break a Palindrome
# 2022.10.10 Daily Challenge.
# @param {String} palindrome
# @return {String}
def break_palindrome(palindrome)
  return "" if  1 == palindrome.size
  pal = palindrome
  ans = pal.chars
  done = false
  (0...(ans.size)/2).each do |i|
    char = ans[i]
    next if ?a == char
    ans[i] = ?a
    done = true
    break
  end
  return ans.join if done
  pal[0...-1]  + ?b
end
