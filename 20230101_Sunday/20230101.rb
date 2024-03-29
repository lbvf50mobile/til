# Leetcode: 290. Word Pattern.
# https://leetcode.com/problems/word-pattern/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 107 ms, faster than 20.00% of Ruby online submissions for Word Pattern.
# Memory Usage: 211 MB, less than 87.50% of Ruby online submissions for Word Pattern.
# 2023.01.01 Daily challenge.
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  h = {}
  h1 = {}
  i = 0 # char poiner.
  s.split(' ').each do |w|
    return false if i >= pattern.size
    key = pattern[i]
    value = h[key]
    used = h1[w]
    if value
      return false if w != value
    else
      return false if used 
      h[key] = w
      h1[w] = true
    end
    i += 1
  end
  return i == pattern.size
end
