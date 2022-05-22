# Leetcode: 647. Palindromic Substrings.
# https://leetcode.com/problems/palindromic-substrings/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 264 ms, faster than 63.64% of Ruby online submissions for Palindromic Substrings.
# Memory Usage: 211.1 MB, less than 45.45% of Ruby online submissions for Palindromic Substring
# @param {String} s
# @return {Integer}
def count_substrings(s)
  # Based on. https://leetcode.com/problems/palindromic-substrings/discuss/392119/Solution-in-Python-3-(beats-~94)-(six-lines)-(With-Detaiiled-Explanation)
  l,r = s.size,0
  (0...l).each do |i|
    [[i,i],[i,i+1]].each do |(a,b)|
      while a >= 0 && b < l && s[a] == s[b]
        a -= 1; b += 1;
      end
      r += (b-a)/2
    end
  end
  r
end

