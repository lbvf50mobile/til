# Leetcode: 1704. Determine if String Halves Are Alike.
# https://leetcode.com/problems/determine-if-string-halves-are-alike/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 225 ms, faster than 100.00% of Ruby online submissions for Determine if String Halves Are Alike.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Determine if String Halves Are Alike.
# 2022.12.01 Daily Challenge.
# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  i,j = 0, s.size-1
  a,b = 0,0
  while i < j
    a += 1 if /[aeiou]/i === s[i]
    b += 1 if /[aeiou]/i === s[j]
    i += 1
    j -= 1
  end
  a == b
end
