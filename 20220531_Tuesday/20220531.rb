# Leetcode: 1461. Check If a String Contains All Binary Codes of Size K.
# https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1871 ms, faster than 100.00% of Ruby online submissions for Check If a String Contains All Binary Codes of Size K.
# Memory Usage: 220.6 MB, less than 100.00% of Ruby online submissions for Check If a String Contains All Binary Codes of Size K.
# @param {String} s
# @param {Integer} k
# @return {Boolean}
def has_all_codes(s, k)
  size = 2**k  
  return false if s.size < size
  require 'set'
  storage = Set.new
  str = s[0...k].chars
  storage.add(str.join)
  (k...s.size).each do |i|
    str.shift
    str.push(s[i])
    storage.add(str.join)
    return true if storage.size == size
  end
  storage.size == size
end
