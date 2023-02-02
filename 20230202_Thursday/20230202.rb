# Leetcode: 953. Verifying an Alien Dictionary.
# https://leetcode.com/problems/verifying-an-alien-dictionary/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 98 ms, faster than 36.36% of Ruby online submissions for Verifying an Alien Dictionary.
# Memory Usage: 211 MB, less than 63.64% of Ruby online submissions for Verifying an Alien Dictionary.
# 2023.02.02 Daily Challenge.
# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  h = order.chars.zip((?a..?z).to_a).to_h
  convert = ->s{ s.chars.map{|x| h[x]}.join}
  nw = words.map(&convert)
  (1...nw.size).each do |j|
    i = j-1
    return false if nw[i] > nw[j]
  end
  return true
end
