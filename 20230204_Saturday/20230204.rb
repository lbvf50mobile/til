# Leetcode: 567. Permutation in String.
# https://leetcode.com/problems/permutation-in-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 151 ms, faster than 82.00% of Ruby online submissions for Permutation in String.
# Memory Usage: 212.8 MB, less than 24.00% of Ruby online submissions for Permutation in String.
# 2023.02.04 Daily Challenge.
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  return false if s1.size > s2.size
  a =  count(s1)
  b =  count(s2[0...s1.size])
  return true if a == b
  (s1.size...s2.size).each do |j|
    prev = s2[j - s1.size].ord - ?a.ord
    curr = s2[j].ord - ?a.ord
    b[prev] -= 1
    b[curr] += 1
    return true if a == b
  end
  return false
end

def count(s)
  a = [0] * 26
  s.chars.each do |c|
    a[c.ord - ?a.ord] += 1
  end
  return a
end
