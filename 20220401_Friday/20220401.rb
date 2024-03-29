# Leetcode: 344. Reverse String. 
# https://leetcode.com/problems/reverse-string/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 381 ms, faster than 32.13% of Ruby online submissions for Reverse String.
# Memory Usage: 225.4 MB, less than 90.16% of Ruby online submissions for Reverse String.
# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  i,j = 0,s.size-1
  while i <= j
    s[i],s[j] = s[j],s[i]
    i += 1
    j -= 1
  end
  s
end
