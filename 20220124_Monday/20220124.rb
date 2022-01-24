# Leetcode: 520. Detect Capital.
# https://leetcode.com/problems/detect-capital/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 99 ms, faster than 22.22% of Ruby online submissions for Detect Capital.
# Memory Usage: 210 MB, less than 33.33% of Ruby online submissions for Detect Capital.
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  number = word.chars.count{|x| /[A-Z]/ === x}
  return true if number.zero? || number == word.size
  return true if 1 == number && /[A-Z]/ === word[0]
  return false
end
