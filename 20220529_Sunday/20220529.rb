# Leetcode: 318. Maximum Product of Word Lengths.
# https://leetcode.com/problems/maximum-product-of-word-lengths/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 708 ms, faster than 80.00% of Ruby online submissions for Maximum Product of Word Lengths.
# Memory Usage: 211.3 MB, less than 40.00% of Ruby online submissions for Maximum Product of Word Lengths.
# @param {String[]} words
# @return {Integer}
def max_product(words)
  x = words.map{|w| [w,w.size,bit_mask(w)]}
  # Sort by lenght descending.
  x = x.sort_by{|el| -el[1]}
  max = 0
  (0...words.size-1).each do |i|
    (i+1...words.size).each do |j|
      if 0 == (x[i][2] & x[j][2])
        ans = x[i][1]*x[j][1]
        max = ans if ans > max
      end
    end
  end
  max
end

def bit_mask(w)
  map = 0
  w.chars.each do |c|
    map |= (1 << (c.ord - ?a.ord))
  end
  map
end
