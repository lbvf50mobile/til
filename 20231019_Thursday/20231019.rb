# Leetcode: 844. Backspace String Compare.
# https://leetcode.com/problems/backspace-string-compare/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 64 ms, faster than 62.16% of Ruby online submissions for Backspace
# String Compare.
# Memory Usage: 211 MB, less than 45.95% of Ruby online submissions for
# Backspace String Compare.
# 2023.10.19 Daily Challenge.
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  clearer(s.chars).to_s == clearer(t.chars).to_s
end


def clearer(a)
  ans = []
  a.each do |x|
    if ?# == x 
        ans.pop if !ans.empty?
    else
      ans.push(x)
    end

  end
  return ans
end
