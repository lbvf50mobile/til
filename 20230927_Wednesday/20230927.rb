# Leetcode: 880. Decoded String at Index.
# https://leetcode.com/problems/decoded-string-at-index/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 66 ms, faster than 100.00% of Ruby online submissions for Decoded
# String at Index.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for Decoded
# String at Index.
# 2023.09.27 Daily Challenge.
# @param {String} s
# @param {Integer} k
# @return {String}
def decode_at_index(s, k)
  # Based on:
  # https://leetcode.com/problems/decoded-string-at-index/discuss/156747/JavaC%2B%2BPython-O(N)-Time-O(1)-Space
  n = 0
  index = 0
  zero = ?0.ord
  nine = ?9.ord
  does = ->x{ return x.ord.between?(zero,nine)}

  s.chars.each_with_index do |c,i|
    n = does[c] ? n * c.to_i : n + 1
    index = i
    break if k <= n
  end

  (0..index).reverse_each do |j|
    c = s[j]
    if does[c]
      n /= c.to_i
      k %= n
    else
      return c if n == k || 0 == k
      n -= 1
    end
  end
  raise "Unknown."
end
