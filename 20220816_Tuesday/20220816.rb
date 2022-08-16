# Leetcode: 387. First Unique Character in a String.
# https://leetcode.com/problems/first-unique-character-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 504 ms, faster than 31.80% of Ruby online submissions for First Unique Character in a String.
# Memory Usage: 214.8 MB, less than 46.67% of Ruby online submissions for First Unique Character in a String.
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = s.chars.tally
  s.chars.each_with_index{|c,i| return i if 1 == hash[c]}
  -1
end
