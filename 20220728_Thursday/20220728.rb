# Leetcode: 242. Valid Anagram.
# https://leetcode.com/problems/valid-anagram/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 165 ms, faster than 76.44% of Ruby online submissions for Valid Anagram.
# Memory Usage: 219.2 MB, less than 7.21% of Ruby online submissions for Valid Anagram.
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size
  create_map(s) == create_map(t)
end

def create_map(str)
  ans = Array.new(28,0)
  str.chars.each do |c|
    ans[c.ord - ?a.ord] += 1
  end
  ans
end
