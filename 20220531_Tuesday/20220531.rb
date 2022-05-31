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
  # puts "Size"
  # puts size
  return false if s.size < size
  # puts "here"
  require 'set'
  storage = Set.new
  str = s[0...k].chars
  storage.add(str.join)
  # puts str.join
  (k...s.size).each do |i|
    str.shift
    str.push(s[i])
    # puts str.join
    storage.add(str.join)
    # puts storage.inspect
    # puts storage.size
    return true if storage.size == size
  end
  storage.size == size
end
